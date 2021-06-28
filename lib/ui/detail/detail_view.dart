import 'package:flutter/material.dart';
import 'package:movie_db_flutter/constants/constants.dart';
import 'package:stacked/stacked.dart';

import 'detail_view_model.dart';

class DetailView extends StatelessWidget {
  final String? url;
  const DetailView({
    Key? key,
    this.url,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DetailViewModel>.reactive(
        viewModelBuilder: () => DetailViewModel(),
        onModelReady: (model) => model.init(),
        builder: (context, model, widget) => GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: Scaffold(
                resizeToAvoidBottomInset: false,
                body: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      expandedHeight: 300,
                      pinned: true,
                      floating: false,
                      flexibleSpace: FlexibleSpaceBar(
                        title: Text(
                          "",
                          style: TextStyle(color: Constants.titleColor),
                        ),
                        background: Hero(
                            tag: url!,
                            child: ShaderMask(
                              shaderCallback: (Rect bounds) {
                                return LinearGradient(
                                  end: Alignment(0.0, 0.8),
                                  begin: Alignment(0.0, 0.2),
                                  colors: [Colors.white, Colors.grey[600]!],
                                  stops: [0, 1],
                                ).createShader(bounds);
                              },
                              child: Image.network(
                                url!,
                                fit: BoxFit.fitWidth,
                              ),
                            )),
                      ),
                    ),
                    SliverFillRemaining(
                      hasScrollBody: false,
                      child: model.isBusy
                          ? Center(child: CircularProgressIndicator())
                          : model.hasError
                              ? Text(model.modelError.toString())
                              : Container(),
                    )
                  ],
                ),
              ),
            ));
  }
}
