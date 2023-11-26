import 'package:toktik/domain/datasources/video_posts_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_post_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {
  final VideoPostDatasource videoPostDataSource;

  VideoPostsRepositoryImpl({required this.videoPostDataSource});

  @override
  Future<List<VideoPost>> getFavoriteVideoByPage(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideoByPage(int page) {
    return videoPostDataSource.getTrendingVideoByPage(page);
  }
}
