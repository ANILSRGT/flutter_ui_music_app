import 'package:flutter/material.dart';

import 'category_song_widget.dart';
import 'colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      bottomNavigationBar: Container(
        height: 80,
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home_rounded),
              iconSize: 34,
              color: AppColors.secondary,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.navigation_outlined),
              iconSize: 34,
              color: AppColors.secondary.withOpacity(0.35),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_outline_rounded),
              iconSize: 34,
              color: AppColors.secondary.withOpacity(0.35),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person_outline_rounded),
              iconSize: 34,
              color: AppColors.secondary.withOpacity(0.35),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverAppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              leading: const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  minRadius: 5,
                  maxRadius: 10,
                  backgroundColor: AppColors.onBackground,
                ),
              ),
              title: const Text('Home'),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                  iconSize: 34,
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 5,
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                constraints: const BoxConstraints(
                  maxHeight: 180,
                  maxWidth: 360,
                ),
                decoration: BoxDecoration(
                  color: AppColors.primary300,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: double.infinity),
                    const Text(
                      'Listening Music',
                      style: TextStyle(
                        color: AppColors.onPrimary300,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'without Ads',
                      style: TextStyle(
                        color: AppColors.onPrimary300,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.secondary,
                        foregroundColor: AppColors.onSecondary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 14,
                          horizontal: 4,
                        ),
                        child: Text(
                          'Try for Free',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 15,
                bottom: 10,
              ),
              child: Column(
                children: [
                  const SizedBox(width: double.infinity),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Recommended',
                        style: TextStyle(
                          color: AppColors.onPrimary300,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) =>
                                  const CategorySongWidget(categoryTitle: 'Recommended'),
                            ),
                          );
                        },
                        child: const Text(
                          'See all',
                          style: TextStyle(
                            color: AppColors.primary100,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 225,
              constraints: const BoxConstraints(
                maxWidth: 360,
              ),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (_, index) {
                  return Container(
                    width: 190,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: AppColors.primary300,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.onPrimary300,
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.onPrimary300.withOpacity(0.5),
                                  blurRadius: 7,
                                  offset: const Offset(0, 5),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          'Sunday Morning',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: AppColors.onPrimary300,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          'Rumuru - San',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: AppColors.onPrimary300,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.play_arrow_rounded),
                                  iconSize: 38,
                                  color: AppColors.onPrimary300,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 15,
                bottom: 10,
              ),
              child: Column(
                children: [
                  const SizedBox(width: double.infinity),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Recently Played',
                        style: TextStyle(
                          color: AppColors.onPrimary300,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) =>
                                  const CategorySongWidget(categoryTitle: 'Recently Played'),
                            ),
                          );
                        },
                        child: const Text(
                          'See all',
                          style: TextStyle(
                            color: AppColors.primary100,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              width: double.infinity,
              constraints: const BoxConstraints(
                maxWidth: 360,
              ),
              child: LayoutBuilder(
                builder: (_, cst) {
                  return ListView.separated(
                    padding: EdgeInsets.zero,
                    itemCount: 3,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (_, __) => const SizedBox(height: 15),
                    itemBuilder: (_, index) {
                      return Row(
                        children: [
                          Container(
                            constraints: const BoxConstraints(
                              maxWidth: 100,
                              maxHeight: 100,
                            ),
                            width: cst.maxWidth * 0.25,
                            height: cst.maxWidth * 0.25,
                            decoration: BoxDecoration(
                              color: AppColors.onBackground,
                              borderRadius: BorderRadius.circular(14),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.onBackground.withOpacity(0.5),
                                  blurRadius: 5,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                const Text(
                                  'Hate Monday',
                                  style: TextStyle(
                                    color: AppColors.onBackground,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  'Asuna - Chan',
                                  style: TextStyle(
                                    color: AppColors.onBackground.withOpacity(0.75),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  '04.25',
                                  style: TextStyle(
                                    color: AppColors.onBackground.withOpacity(0.75),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.play_arrow_rounded),
                            iconSize: 34,
                            color: AppColors.onBackground,
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 20),
          ),
        ],
      ),
    );
  }
}
