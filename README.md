# SLAMTEC LIDAR ROS2 Package for RPLIDAR C1

![alt text](https://github.com/CagriCatik/rplidar-demo/blob/main/img/demo.png)

This ROS2 package provides a node for interfacing with SLAMTEC LIDAR, specifically designed for RPLIDAR C1. It allows you to integrate RPLIDAR C1 into your ROS2 environment for various robotic applications.

For detailed information about SLAMTEC LIDAR and other supported models, please visit the following resources:

- [SLAMTEC LIDAR ROS Wiki](http://wiki.ros.org/rplidar)
- [SLAMTEC LIDAR HomePage](http://www.slamtec.com/en/Lidar)
- [SLAMTEC LIDAR SDK](https://github.com/Slamtec/rplidar_sdk)
- [SLAMTEC LIDAR Tutorial](https://github.com/robopeak/rplidar_ros/wiki)


## ROS2 Installation

To install ROS2, follow the installation instructions for your desired ROS2 distribution:

- [ROS2 Humble](https://docs.ros.org/en/humble/Installation.html)


## Creating a ROS2 Workspace

Follow the ROS2 tutorial to create a workspace. As an example, you can use the following commands:

```bash
mkdir -p ~/ros2_ws/src
cd ~/ros2_ws/src
```

## Compile & Install rplidar_ros Package

1. Clone the rplidar_ros package from the GitHub repository:

   ```bash
   git clone -b ros2 https://github.com/Slamtec/rplidar_ros.git
   ```

2. Build the rplidar_ros package:

   ```bash
   cd ~/ros2_ws/
   source /opt/ros/humble/setup.bash
   colcon build --symlink-install
   ```

3. Set up the package environment:

   ```bash
   source ./install/setup.bash
   ```

   Note: For permanent workspace environment variables, add the following to your `~/.bashrc`:

   ```bash
   echo "source <your_own_ros2_ws>/install/setup.bash" >> ~/.bashrc
   source ~/.bashrc
   ```

4. Create udev rules for RPLIDAR C1:

   Ensure read and write permissions for the serial device by running:

   ```bash
   sudo chmod 777 /dev/ttyUSB0
   ```

   Alternatively, create a udev rule:

   ```bash
   cd src/rplidar_ros/
   source scripts/create_udev_rules.sh
   ```

## Running rplidar_ros

### Run rplidar node and visualize in RViz

Choose the appropriate command based on your RPLIDAR model. Replace `<lidar_model>` with the specific model you are using.

```bash
ros2 launch rplidar_ros view_rplidar_c1_launch.py
```


## RPLIDAR Frame

Ensure that the RPLIDAR frame is broadcasted according to the instructions provided in the `rplidar-frame.png` image.