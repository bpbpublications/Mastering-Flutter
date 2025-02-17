import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:movies/utils/utils.dart';

typedef OnSortSelected = void Function(Sorting);

class SortPicker extends ConsumerStatefulWidget {
  final OnSortSelected onSortSelected;

  const SortPicker({required this.onSortSelected, super.key});

  @override
  ConsumerState<SortPicker> createState() => _SortPickerState();
}

class _SortPickerState extends ConsumerState<SortPicker> {
  Sorting selectedSort = Sorting.aToz;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Text(
          selectedSort.name,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        addHorizontalSpace(16),
        PopupMenuButton<Sorting>(
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Colors.white ,
          ),
          onSelected: (Sorting value) {
            widget.onSortSelected(value);
          },
          itemBuilder: (BuildContext context) {
            return Sorting.values
                .mapIndexed<PopupMenuItem<Sorting>>((int index, Sorting sort) {
              return CheckedPopupMenuItem<Sorting>(
                checked: selectedSort == sort,
                value: sort,
                onTap: () {
                  setState(() {
                    selectedSort = sort;
                  });
                },
                child: Text(sort.name),
              );
            }).toList();
          },
        ),
      ],
    );
  }
}