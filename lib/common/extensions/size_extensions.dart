import 'package:i_movie/common/screenutil/screenutil.dart' show ScreenUtil;

extension SizeExtension on double {
  double get w => ScreenUtil().setWidth(this);

  double get h => ScreenUtil().setHeight(this);

  double get sp => ScreenUtil().setSp(this);
}
