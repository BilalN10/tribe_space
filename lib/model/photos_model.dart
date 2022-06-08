class PhotosModel {
  int? comment;
  String? imagePath;
  int? likes;
  bool? isLike;
  PhotosModel({
    this.likes,
    this.imagePath,
    this.comment,
    this.isLike,
  });
}

List<PhotosModel> photoList = [
  PhotosModel(comment: 0, likes: 0, isLike: false),
  PhotosModel(comment: 0, likes: 17, isLike: false),
  PhotosModel(comment: 0, likes: 0, isLike: false),
  PhotosModel(comment: 0, likes: 0, isLike: false)
];
