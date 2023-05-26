import 'package:flutter/material.dart';

import 'colors.dart';
import 'extensions/context_extension.dart';

class ArtistDetailsWidget extends StatefulWidget {
  const ArtistDetailsWidget({super.key});

  @override
  State<ArtistDetailsWidget> createState() => _ArtistDetailsWidgetState();
}

class _ArtistDetailsWidgetState extends State<ArtistDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    bool isPortrait = screenSize.height > screenSize.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Stack(
              fit: StackFit.expand,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: screenSize.height,
                    width: screenSize.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: const [0.0, 0.4],
                        colors: [
                          AppColors.onBackground.withOpacity(0.55),
                          AppColors.onBackground.withOpacity(0.0),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 50),
                            height: isPortrait ? screenSize.width * 0.4 : screenSize.height * 0.4,
                            width: isPortrait ? screenSize.width * 0.4 : screenSize.height * 0.4,
                            decoration: BoxDecoration(
                              color: AppColors.onBackground,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        Text(
                          'Artis',
                          style: context.textTheme.labelLarge?.copyWith(
                            color: AppColors.onBackground.withOpacity(0.55),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Mikey - Kun',
                          style: context.textTheme.titleLarge?.copyWith(
                            color: AppColors.onBackground,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.music_note_rounded,
                                      size: 20,
                                      color: AppColors.onBackground.withOpacity(0.55),
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      '10.0M Weekly Listeners',
                                      style: context.textTheme.labelMedium?.copyWith(
                                        color: AppColors.onBackground.withOpacity(0.55),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Icon(
                                        Icons.favorite_border_rounded,
                                        color: AppColors.onBackground.withOpacity(0.55),
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    InkWell(
                                      onTap: () {},
                                      child: Icon(
                                        Icons.file_download_outlined,
                                        color: AppColors.onBackground.withOpacity(0.55),
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    InkWell(
                                      onTap: () {},
                                      child: Icon(
                                        Icons.more_vert_rounded,
                                        color: AppColors.onBackground.withOpacity(0.55),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.play_circle_fill_rounded),
                              iconSize: 64,
                              splashRadius: 32,
                              color: AppColors.secondary,
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Text(
                          'Popular Songs',
                          style: context.textTheme.titleLarge?.copyWith(
                            color: AppColors.onBackground,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 15),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: Container(
                                height:
                                    isPortrait ? screenSize.width * 0.2 : screenSize.height * 0.2,
                                width:
                                    isPortrait ? screenSize.width * 0.2 : screenSize.height * 0.2,
                                decoration: BoxDecoration(
                                  color: AppColors.onBackground,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.onBackground.withOpacity(0.2),
                                      blurRadius: 10,
                                      offset: const Offset(0, 5),
                                    ),
                                  ],
                                ),
                              ),
                              title: Text(
                                'Song Title',
                                overflow: TextOverflow.ellipsis,
                                style: context.textTheme.titleLarge?.copyWith(
                                  color: AppColors.onBackground,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                '1.000.000',
                                style: context.textTheme.labelMedium?.copyWith(
                                  color: AppColors.onBackground.withOpacity(0.55),
                                ),
                              ),
                              trailing: const Icon(
                                Icons.more_horiz_rounded,
                                color: AppColors.onBackground,
                                size: 28,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.chevron_left_rounded),
                    iconSize: 42,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
