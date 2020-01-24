
class SubmitPageLocationSearchChild extends StatelessWidget {
  final EventLocation previousLocation;

  SubmitPageLocationSearchChild({this.previousLocation});

  @override
  Widget build(BuildContext context) {
    final PlaceSearchProvider provider = Provider.of<PlaceSearchProvider>(
      context,
      listen: false,
    );

    //Update the previousLocation
    provider.setLocationResult = previousLocation;

    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop(provider.locationResult);
        return false; //Use false here as it onWillPop has it's own .pop
      },
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: SubmitPageLocationSearchAppBar(),
        body: SubmitPageLocationSearchBody(),
      ),
    );
  }
}
