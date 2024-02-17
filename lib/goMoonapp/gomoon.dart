import 'package:flutter/material.dart';
import 'package:lap_app/widgets/custom_button.dart';

class Home_Page extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  Home_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(
            horizontal: _deviceHeight * 0.03,
          ),
          // color: Colors.red,
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _pageTitle(),
                  _bookRideWidget(),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: _astroImageWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return Text(
      "#GoMoon",
      style: TextStyle(
        fontSize: 70,
        color: Colors.white,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      height: _deviceHeight*0.50,
      width: _deviceWidth*0.65,
      decoration: const BoxDecoration(
        // color: Colors.red,
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage('asset/astro_moon.png'),
        ),
      ),
    );
  }

  Widget _dropDownWidget() {
    // List<String> _items = [

    // ];
    return CustomDropDownButton(
      values: const [
        'Saurabh',
        'Dhital',
      ],
      width: _deviceWidth,
    );
  }

  Widget _bookRideWidget() {
    return Container(
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _dropDownWidget(),
          _travellerInfoWidget(),
          _rideButton(),
        ],
      ),
    );
  }

  Widget _travellerInfoWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropDownButton(
            values: const ['1', '2', '3', '4'], width: _deviceWidth * 0.3),
        CustomDropDownButton(
            values: const ['Name', 'Age', 'Caste', 'Gender'],
            width: _deviceWidth * 0.40),
      ],
    );
  }

  Widget _rideButton() {
    return Container(
      margin: EdgeInsets.only(
        bottom: _deviceHeight * 0.05,
        // top: _deviceWidth * 0.03,
      ),
      width: _deviceWidth,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          "Book Ride",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
