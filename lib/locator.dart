import 'package:get_it/get_it.dart';
import 'package:weather_app/features/feature_weather/data/data_source/remote/api_provider.dart';
import 'package:weather_app/features/feature_weather/data/repository/weather_repository_impl.dart';
import 'package:weather_app/features/feature_weather/domain/repository/weather_repository.dart';
import 'package:weather_app/features/feature_weather/domain/usecases/get_current_weather_usecase.dart';
import 'package:weather_app/features/feature_weather/presentation/bloc/home_bloc.dart';

final GetIt locator = GetIt.instance;

setup() {
  // api provider
  locator.registerSingleton<ApiProvider>(ApiProvider());

  // repositories
  locator
      .registerSingleton<WeatherRepository>(WeatherRepositoryImpl(locator()));

  // use cases
  locator.registerSingleton<GetCurrentWeatherUseCase>(
      GetCurrentWeatherUseCase(locator()));

  // bloc
  locator.registerSingleton<HomeBloc>(HomeBloc(locator()));
}
