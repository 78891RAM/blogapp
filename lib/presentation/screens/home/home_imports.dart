import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:auto_route/auto_route.dart';

import 'package:blogapp/data/repositories/repository.dart';
import 'package:blogapp/presentation/routes/router_imports.gr.dart';
import 'package:blogapp/presentation/screens/home/home_model.dart';

import 'package:blogapp/presentation/screens/home/widget/blogcategory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:blogapp/core/constants/assets.dart';
import 'package:velocity_bloc/cubit/velocity_cubit/velocity_cubit.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../core/constants/colors.dart';
import 'widget/search_widget.dart';

part 'home.dart';
part 'home_view_model.dart';
