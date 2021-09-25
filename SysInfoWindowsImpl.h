#ifndef SYSINFOWINDOWSIMPL_H
#define SYSINFOWINDOWSIMPL_H

#include "SysInfo.h"
#include <QVector>
#include <QtGlobal>

typedef struct _FILETIME FILETIME;

class SysInfoWindowsImpl : public SysInfo
{
public:
  SysInfoWindowsImpl();

  void init() override;
  double cpuLoadAverage() override;
  double memoryUsed() override;

private:
  QVector<qulonglong> cpuRawData();
  qulonglong convertFileTime(const FILETIME &filetime) const;

private:
  QVector<qulonglong> _cpuLoadLastValues;
};

#endif // SYSINFOWINDOWSIMPL_H
