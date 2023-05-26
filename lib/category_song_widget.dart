import 'dart:math' as math;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'artist_details_widget.dart';
import 'colors.dart';
import 'extensions/context_extension.dart';
import 'use_cases/custom_curves/flash_curve.dart';
import 'widgets/container/responsive_container.dart';

class CategorySongWidget extends StatefulWidget {
  final String categoryTitle;
  const CategorySongWidget({
    Key? key,
    required this.categoryTitle,
  }) : super(key: key);

  @override
  State<CategorySongWidget> createState() => _CategorySongWidgetState();
}

class _CategorySongWidgetState extends State<CategorySongWidget> {
  final CarouselController _carouselController = CarouselController();

  List<Color> _songColors = [];

  @override
  void initState() {
    super.initState();
    _songColors = List.generate(5, (_) => context.randomColor);
  }

  int _currentSongIndex = 0;
  bool _isPlaying = true;

  void _onPageChanged(int index, CarouselPageChangedReason reason) {
    setState(() {
      _currentSongIndex = index;
    });
  }

  void _togglePlayAndPause() {
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.chevron_left_rounded),
            color: AppColors.onBackground,
            iconSize: 34,
          ),
          title: Text(widget.categoryTitle),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.graphic_eq_rounded),
              iconSize: 34,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ResponsiveContainer(
                height: screenSize.height * 0.47,
                minHeight: 250,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: CarouselSlider.builder(
                    itemCount: _songColors.length,
                    options: CarouselOptions(
                      clipBehavior: Clip.none,
                      aspectRatio: 1,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: _onPageChanged,
                    ),
                    carouselController: _carouselController,
                    itemBuilder: (_, index, realIndex) {
                      return AnimatedOpacity(
                        duration: const Duration(milliseconds: 1000),
                        curve: index == _currentSongIndex ? const InFlashCurve() : Curves.ease,
                        opacity: index == _currentSongIndex ? 1 : 0.5,
                        child: Container(
                          width: screenSize.width * 0.75,
                          decoration: BoxDecoration(
                            color: _songColors[index],
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: _songColors[index].withOpacity(0.5),
                                blurRadius: 10,
                                offset: const Offset(0, 5),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Blessed Friday',
                      textAlign: TextAlign.center,
                      style: context.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.onBackground,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const ArtistDetailsWidget(),
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        textStyle: context.textTheme.titleMedium,
                        foregroundColor: AppColors.onBackground,
                        elevation: 0,
                        splashFactory: NoSplash.splashFactory,
                      ),
                      child: const Text('Mikey - Kun'),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: List.generate(
                          screenSize.width ~/ 15,
                          (index) => Expanded(
                            child: Container(
                              height: math.Random().nextDouble() * 60,
                              margin: const EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: AppColors.onBackground,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '0:00',
                          style: context.textTheme.labelLarge?.copyWith(
                            color: AppColors.onBackground,
                          ),
                        ),
                        Text(
                          '3:00',
                          style: context.textTheme.labelLarge?.copyWith(
                            color: AppColors.onBackground,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.repeat_rounded),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.skip_previous_rounded),
                        ),
                        ElevatedButton(
                          onPressed: _togglePlayAndPause,
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(12),
                            backgroundColor: AppColors.secondary,
                            foregroundColor: AppColors.onSecondary,
                          ),
                          child: Icon(
                            _isPlaying ? Icons.play_arrow_rounded : Icons.pause_rounded,
                            size: 32,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.skip_next_rounded),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.shuffle_rounded),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.keyboard_arrow_up_rounded),
                    Text(
                      'Songs',
                      style: context.textTheme.titleMedium?.copyWith(
                        color: AppColors.onBackground,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
