class YoutubeModel {
  final String title;
  final String description;
  final String thumbNail;
  final String publishedTime;
  final String channelTitle;
  final String channelAvatar;
  final String viewCount;
  final String likeCount;
  final String dislikeCount;
  final String subscriberCount;

  YoutubeModel({this.title,
    this.description,
    this.thumbNail,
    this.publishedTime,
    this.channelTitle,
    this.channelAvatar,
    this.viewCount,
    this.likeCount,
    this.dislikeCount,
  this.subscriberCount});
}
  List<YoutubeModel> youtubeData = [

    // Post Malone
    YoutubeModel(
      title: "Post Malone - Circles",
      description: "Official music video by Post Malone performing “Circles” – off his new album 'Hollywood's Bleeding’ available now: https://PostMalone.lnk.to/hollywoodsb...",
      thumbNail:
      "https://img.youtube.com/vi/wXhTHyIgQ_U/maxresdefault.jpg",
      publishedTime: "1 year ago",
      channelTitle: "Post Malone",
      channelAvatar:"https://yt3.ggpht.com/ytc/AAUvwngEccasZINOruGNJrrWPijiYyEs7oNppT9StVJQ4Q=s48-c-k-c0xffffffff-no-nd-rj-mo",
      viewCount: "310M views",
      likeCount: "3.3M",
      dislikeCount: "78K",
      subscriberCount: "20.5M"
    ),

    //Galaxy Note 20
    YoutubeModel(
        title: "Samsung Galaxy Note 20 Ultra Impressions: Ultra Premium!",
        description: "Note 20 and Note 20 Ultra hands-on and first thoughts!",
        thumbNail:
        "https://img.youtube.com/vi/mRvBCXMSrBE/maxresdefault.jpg",
        publishedTime: "7 months ago",
        channelTitle: "Marqueus Brownlee",
        channelAvatar:
        "https://yt3.ggpht.com/a-/AN66SAwxVf-12cuqSiSP2HKPkpDqI0NCAghAiE7IVg=s288-mo-c-c0xffffffff-rj-k-no",
        viewCount: "3.5M views",
        likeCount: "134K",
        dislikeCount: "2.5k",
        subscriberCount: "13.2M"
    ),

    // Back to You
    YoutubeModel(
        title: "Selena Gomez - Back To You",
        description: "Get Selena's new album 'Rare', out now: http://smarturl.it/RARESG\nGet 'Back To You,' out now: http://smarturl.it/BackToYouSG ",
        thumbNail:
        "https://img.youtube.com/vi/VY1eFxgRR-k/maxresdefault.jpg",
        publishedTime: "1 year ago",
        channelTitle: "Selena Gomez",
        channelAvatar:"https://yt3.ggpht.com/ytc/AAUvwngogbjS-RP6i0tunVvUEAVfr4WtkLuFt__sPENMwg=s88-c-k-c0x00ffffff-no-rj",
        viewCount: "241M views",
        likeCount: "2.7M",
        dislikeCount: "107K",
        subscriberCount: "27.3M"
    ),


    // Tones and I
    YoutubeModel(
        title: "TONES AND I - DANCE MONKEY (OFFICIAL VIDEO)",
        description: "Watch Tones And I's 'Artist On The Rise' video: https://youtu.be/UkwZILz_EKE \n"
            "Tones And I - Dance Monkey - https://tonesandi.lnk.to/DanceMonkeyYT",
        thumbNail:
        "https://img.youtube.com/vi/q0hyYWKXF0Q/maxresdefault.jpg",
        publishedTime: "1 year ago",
        channelTitle: "TONES AND I",
        channelAvatar:"https://yt3.ggpht.com/-qtnbIDAbSNQ/AAAAAAAAAAI/AAAAAAAAAJc/Zt6FE6ofr1I/s88-nd-c-c0xffffffff-rj-k-no/photo.jpg",
        viewCount: "1.4B views",
        likeCount: "11M",
        dislikeCount: "677K",
        subscriberCount: "4.45M"
    ),

    //Pixel 3
    YoutubeModel(
      title: "Pixel 3 XL Second Impression: Notch City!",
      description: "Marques Brownlee gives his opinion on Pixel 3 XL",
      thumbNail:
      "https://img.youtube.com/vi/Lg9N8XAZ6u4/maxresdefault.jpg",
      publishedTime: "16 hours ago",
      channelTitle: "Marqueus Brownlee",
      channelAvatar:
      "https://yt3.ggpht.com/a-/AN66SAwxVf-12cuqSiSP2HKPkpDqI0NCAghAiE7IVg=s288-mo-c-c0xffffffff-rj-k-no",
      viewCount: "917K views",
      likeCount: "20k",
      dislikeCount: "51",
      subscriberCount: "13.2M"
    ),

    // Taki Taki
    YoutubeModel(
      title: "DJ Snake - Taki Taki ft. Selena Gomez, Ozuna, Cardi B",
      description:
      "DJ Snake - Taki Taki ft. Selena Gomez, Ozuna, Cardi takes you on a ride",
      thumbNail:
      "https://img.youtube.com/vi/ixkoVwKQaJg/maxresdefault.jpg",
      publishedTime: "2 weeks ago",
      channelTitle: "DJ Snake",
      channelAvatar:
      "https://yt3.ggpht.com/a-/AN66SAzkcvkwVn1Y5Zdpb1jkn9zyJ7vGxO8qHBxCTg=s288-mo-c-c0xffffffff-rj-k-no",
      viewCount: "50M views",
      likeCount: "34K",
      dislikeCount: "2K",
        subscriberCount: "19.5M"
    ),

    // 24 Goldn
    YoutubeModel(
      title: "24kGoldn - Mood (Official Video) ft. iann dior",
      description: "Official video for 'Mood' by 24kGoldn featuring Iann Dior.",
      thumbNail:
      "https://img.youtube.com/vi/GrAchTdepsU/maxresdefault.jpg",
      publishedTime: "6 months ago",
      channelTitle: "24kGoldn",
      channelAvatar:"https://yt3.ggpht.com/ytc/AAUvwnhQ-DxqyVQSsIzQ5H0egwmcZa1ry1jP-0YpH8WZwg=s88-c-k-c0x00ffffff-no-rj",
      viewCount: "108M views",
      likeCount: "2.3M",
      dislikeCount: "44K",
        subscriberCount: "1.34M"
    ),

  ];