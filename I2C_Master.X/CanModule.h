/* 
 * File:   CanModule.h
 * Author: dfoeh
 *
 * Created on 12. Juni 2020, 00:37
 */

#ifndef CANMODULE_H
#define	CANMODULE_H

#ifdef	__cplusplus
extern "C" {
#endif

void ProcessCanMessage(void);
void SendCanFrame(char data[], char length);
void SendCanFrameS(char data);
void InitializeCan(char CanAddrHigh, char CanAddrLow);

#ifdef	__cplusplus
}
#endif

#endif	/* CANMODULE_H */

