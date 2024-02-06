import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:blogapp/core/constants/colors.dart';
import 'package:blogapp/presentation/screens/auth/auth_imports.dart';
import 'package:blogapp/utils/utils.dart';
import 'package:blogapp/utils/validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_bloc/cubit/velocity_cubit/velocity_cubit.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../core/constants/assets.dart';
import '../../../../data/repositories/repository.dart';
import '../../../common_widgets/custom_button_imports.dart';
import '../../../routes/router_imports.gr.dart';

part 'login.dart';
part 'login_model.dart';
part 'login_view_model.dart';
