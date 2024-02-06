#include <media/AudioParameter.h>

using android::String8;
using android::status_t;

extern "C"
status_t _ZN7android14AudioParameter3getERKNS_7String8ERS1_
(android::AudioParameter *a, const String8& key, String8& value) {
     return a->get(key, value);
}

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wreturn-type-c-linkage"

extern "C"
String8 _ZN7android14AudioParameter8toStringEv
(android::AudioParameter *a) {
     return a->toString();
}

#pragma clang diagnostic pop
