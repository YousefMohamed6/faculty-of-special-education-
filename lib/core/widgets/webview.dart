import 'package:faculty_of_special_education/features/services/presentation/manager/navigation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CustomWebViewWidget extends StatefulWidget {
  const CustomWebViewWidget({
    super.key,
    required this.url,
  });
  final String url;
  @override
  State<CustomWebViewWidget> createState() => _CustomWebViewWidgetState();
}

class _CustomWebViewWidgetState extends State<CustomWebViewWidget> {
  @override
  void initState() {
    super.initState();
    _initController(widget.url).then((_) {
      setState(() {});
    });
  }

  Future<void> _initController(String url) async {
    final ServicesCubit cubit = context.read<ServicesCubit>();
    _controller = cubit.webViewController..loadRequest(Uri.parse(url));
  }

  late WebViewController _controller;
  @override
  Widget build(BuildContext context) {
    return WebViewWidget(
      controller: _controller,
    );
  }
}
