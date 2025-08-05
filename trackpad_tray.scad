// SPDX-License-Identifier: MIT
$fa = 1;
$fs = 0.4;

tray_hook();
translate([trackpad_tray_length/2 + 10, 0, 0])
   color("blue")tray();

keyboard_tray_hardware_height = 32.53;
keyboard_tray_hardware_length = 9.49;
trackpad_tray_length = 170;
trackpad_tray_width = 140;
trackpad_tray_height = 20;
tray_hook_length = keyboard_tray_hardware_length + 4;
tray_hook_width = trackpad_tray_width;
tray_hook_height = keyboard_tray_hardware_height + 4;

module tray_hook() {
   union() {
      difference() {
         cube([tray_hook_length, tray_hook_width, tray_hook_height], center = true);
         translate([-2, 0, 0])
            cube([keyboard_tray_hardware_length + 1.1, tray_hook_width, keyboard_tray_hardware_height + 1], center = true);
         translate([6.5, 0, 0])
            color("red")cube([4, tray_hook_width, trackpad_tray_height], center=true);
      }
      translate([-6.95 - 0.001, 0, tray_hook_height / 2 - 3])
         cube([3, tray_hook_width, 6], center = true);
      translate([-6.95 - 0.001, 0, -tray_hook_height / 2 + 3])
         cube([3, tray_hook_width, 6], center = true);

   }
}

module tray() {
   cube([trackpad_tray_length, trackpad_tray_width, trackpad_tray_height], center = true);
}