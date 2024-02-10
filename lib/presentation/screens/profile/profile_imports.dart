import 'package:auto_route/auto_route.dart';
import 'package:blogapp/data/repositories/auth_repo.dart';
import 'package:blogapp/data/repositories/repository.dart';
import 'package:blogapp/presentation/routes/router_imports.gr.dart';
import 'package:blogapp/presentation/screens/profile/profile_model.dart';
import 'package:blogapp/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_bloc/cubit/velocity_cubit/velocity_cubit.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../core/constants/colors.dart';
import 'widgets/profile_card.dart';

part 'profile.dart';
part 'profile_view_model.dart';
