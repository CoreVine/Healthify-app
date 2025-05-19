import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class KashierPaymentScreen extends StatefulWidget {
  final String paymentUrl;

  const KashierPaymentScreen({super.key, required this.paymentUrl});

  @override
  _KashierPaymentScreenState createState() => _KashierPaymentScreenState();
}

class _KashierPaymentScreenState extends State<KashierPaymentScreen> {
  late WebViewController _controller;
  bool _isLoading = true;
  bool _hasError = false;
  int _retryCount = 0;
  final int _maxRetries = 3;

  Future<void> _loadPaymentPage() async {
    try {
      setState(() {
        _isLoading = true;
        _hasError = false;
      });

      await _controller.loadRequest(Uri.parse(widget.paymentUrl));
    } catch (e) {
      if (_retryCount < _maxRetries) {
        _retryCount++;
        await _loadPaymentPage();
      } else {
        setState(() {
          _hasError = true;
          _isLoading = false;
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..enableZoom(false)
      ..setBackgroundColor(Colors.transparent)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (url) => setState(() => _isLoading = true),
          onPageFinished: (url) => setState(() => _isLoading = false),
          onWebResourceError: (error) {
            setState(() {
              _hasError = true;
              _isLoading = false;
            });
          },
          onNavigationRequest: (request) {
            if (request.url.contains('success')) {
              Navigator.of(context).pop('success');
              return NavigationDecision.prevent;
            }
            if (request.url.contains('failure')) {
              Navigator.of(context).pop('failure');
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      );

    _loadPaymentPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            WebViewWidget(controller: _controller),
            if (_isLoading) const Center(child: CircularProgressIndicator()),
            if (_hasError)
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Payment failed to load', textAlign: TextAlign.center),
                  const SizedBox(height: 20),
                  if (_retryCount < _maxRetries)
                    ElevatedButton(
                      onPressed: _loadPaymentPage,
                      child: const Text('Retry'),
                    )
                  else
                    ElevatedButton(
                      onPressed: () => Navigator.pop(context, 'failure'),
                      child: const Text('Go Back'),
                    ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
