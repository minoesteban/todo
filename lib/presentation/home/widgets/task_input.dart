import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TaskInput extends HookWidget {
  const TaskInput({
    required this.onAddTask,
    super.key,
  });

  final void Function(String) onAddTask;

  @override
  Widget build(BuildContext context) {
    final titleFocusNode = useFocusNode();
    final titleController = useTextEditingController();

    void sendMessage() {
      final title = titleController.text;

      if (title.isNotEmpty) {
        titleController.clear();
        onAddTask(title);
      }
    }

    return Container(
      padding: EdgeInsets.fromLTRB(
        16,
        8,
        16,
        0 + MediaQuery.of(context).padding.bottom,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2.0,
            spreadRadius: 1.0,
            offset: Offset(0.0, -1.0),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              minLines: 1,
              maxLines: 2,
              autofocus: false,
              focusNode: titleFocusNode,
              controller: titleController,
              keyboardType: TextInputType.multiline,
              textInputAction: TextInputAction.done,
              decoration: const InputDecoration(
                hintText: 'Add task...',
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            splashColor: Colors.transparent,
            color: Theme.of(context).colorScheme.primary,
            onPressed: sendMessage,
          ),
        ],
      ),
    );
  }
}
