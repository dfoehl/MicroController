#ifndef CAN_COMMANDS_H

#define CAN_COMMANDS_H

#define CANCMD_VERSION (0x00u)
#define CANCMD_SLAVE (0x7Fu)
#define CANCMD_SLAVE_DATA (0x5Du)
#define CANCMD_SLAVE_SET (0x6Eu)
#define CANCMD_DISCOVER (0x7Fu) /* On receive: only for Broadcasts */
#define CANCMD_KEYBOARD_INPUT (0x4Cu)

#endif /* CAN_COMMANDS_H */