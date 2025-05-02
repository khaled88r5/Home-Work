import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/task.dart';
import 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskInitial()) {
    // Initialize with empty task list
    emit(const TaskLoaded(tasks: []));
  }

  void addTask(String title) {
    if (state is TaskLoaded) {
      final currentTasks = (state as TaskLoaded).tasks;
      final newIndex = currentTasks.length; // index for the new task
      final newTask = Task(id: newIndex.toString(), title: title);

      emit(TaskLoaded(tasks: [...currentTasks, newTask]));
    }
  }

  void toggleTaskCompletion(String taskId) {
    if (state is TaskLoaded) {
      final currentTasks = (state as TaskLoaded).tasks;
      final updatedTasks =
          currentTasks.map((task) {
            if (task.id == taskId) {
              return task.copyWith(isCompleted: !task.isCompleted);
            }
            return task;
          }).toList();

      emit(TaskLoaded(tasks: updatedTasks));
    }
  }

  void deleteTask(String taskId) {
    if (state is TaskLoaded) {
      final currentTasks = (state as TaskLoaded).tasks;
      final updatedTasks =
          currentTasks.where((task) => task.id != taskId).toList();
      // Update ids to match new indices
      final reindexedTasks = [
        for (int i = 0; i < updatedTasks.length; i++)
          updatedTasks[i].copyWith(id: i.toString()),
      ];
      emit(TaskLoaded(tasks: reindexedTasks));
    }
  }
}
