// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart'
    as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_cubit.dart' as _i17;
import 'application/authentication/cubit/authentication_cubit.dart' as _i14;
import 'application/chat/chat_data_cubit.dart' as _i3;
import 'application/friend/friend_cubit.dart' as _i15;
import 'application/room/room_cubit.dart' as _i16;
import 'domain/auth/auth_repository.dart' as _i12;
import 'domain/friend/friend_repository.dart' as _i6;
import 'domain/room/room_repository.dart' as _i10;
import 'infrastructure/auth/auth_datasoure.dart' as _i13;
import 'infrastructure/core/fb_injectable_module.dart' as _i18;
import 'infrastructure/friend/friend_datasource.dart' as _i7;
import 'infrastructure/room/room_datasource.dart' as _i11;
import 'presentation/routes/kopi_router.dart' as _i9;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.factory<_i3.ChatDataCubit>(() => _i3.ChatDataCubit());
    gh.lazySingleton<_i4.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.singleton<_i5.FirebaseChatCore>(
        () => firebaseInjectableModule.fbChatCore);
    gh.singleton<_i6.FriendRepository>(
        () => _i7.FriendDatasource(gh<_i5.FirebaseChatCore>()));
    gh.lazySingleton<_i8.GoogleSignIn>(
        () => firebaseInjectableModule.googleSignIn);
    gh.singleton<_i9.KopiRouter>(() => _i9.KopiRouter());
    gh.singleton<_i10.RoomRepository>(
        () => _i11.RoomDatasource(gh<_i5.FirebaseChatCore>()));
    gh.singleton<_i12.AuthRepository>(() => _i13.AuthDatasoure(
          gh<_i4.FirebaseAuth>(),
          gh<_i5.FirebaseChatCore>(),
          gh<_i8.GoogleSignIn>(),
        ));
    gh.singleton<_i14.AuthenticationCubit>(
        () => _i14.AuthenticationCubit(gh<_i12.AuthRepository>()));
    gh.factory<_i15.FriendCubit>(
        () => _i15.FriendCubit(gh<_i6.FriendRepository>()));
    gh.factory<_i16.RoomCubit>(() => _i16.RoomCubit(gh<_i10.RoomRepository>()));
    gh.factory<_i17.AuthCubit>(() => _i17.AuthCubit(gh<_i12.AuthRepository>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i18.FirebaseInjectableModule {}
