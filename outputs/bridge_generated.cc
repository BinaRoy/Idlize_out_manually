/*
 * Copyright (c) 2024 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#include <vector>
#include <string>

#define KOALA_INTEROP_MODULE ArkUIGeneratedNativeModule
#include "common-interop.h"
#include "arkoala_api_generated.h"
#include "Serializers.h"
#include "callbacks.h"

const OH_AnyAPI* GetAnyImpl(int kind, int version, std::string* result = nullptr);

static const GENERATED_ArkUIFullNodeAPI* GetFullImpl() {
    return reinterpret_cast<const GENERATED_ArkUIFullNodeAPI*>(
        GetAnyImpl(static_cast<int>(GENERATED_Ark_APIVariantKind::GENERATED_FULL),
        GENERATED_ARKUI_FULL_API_VERSION, nullptr));
}

static const GENERATED_ArkUINodeModifiers* GetNodeModifiers() {
    return GetFullImpl()->getNodeModifiers();
}

static const GENERATED_ArkUIAccessors* GetAccessors() {
    return GetFullImpl()->getAccessors();
}

Ark_NativePointer impl_Blank_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getBlankModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(Blank_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_BlankInterface_setBlankOptions(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto minValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Union_Number_String minValueTempTmpBuf = {};
        minValueTempTmpBuf.tag = minValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((minValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            const Ark_Int8 minValueTempTmpBufOptUnionSelector = thisDeserializer.readInt8();
            Ark_Union_Number_String minValueTempTmpBufOpt = {};
            minValueTempTmpBufOpt.selector = minValueTempTmpBufOptUnionSelector;
            if (minValueTempTmpBufOptUnionSelector == 0) {
                minValueTempTmpBufOpt.selector = 0;
                minValueTempTmpBufOpt.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
            } else if (minValueTempTmpBufOptUnionSelector == 1) {
                minValueTempTmpBufOpt.selector = 1;
                minValueTempTmpBufOpt.value1 = static_cast<Ark_String>(thisDeserializer.readString());
            } else {
                INTEROP_FATAL("One of the branches for minValueTempTmpBufOpt has to be chosen through deserialisation.");
            }
            minValueTempTmpBuf.value = static_cast<Ark_Union_Number_String>(minValueTempTmpBufOpt);
        }
        Opt_Union_Number_String minValueTemp = minValueTempTmpBuf;;
        GetNodeModifiers()->getBlankModifier()->setBlankOptions(self, static_cast<Opt_Union_Number_String*>(&minValueTemp));
}
KOALA_INTEROP_DIRECT_V3(BlankInterface_setBlankOptions, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_BlankAttribute_setColor(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_ResourceColor valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            valueValueTempTmpBuf.value0 = static_cast<Ark_Color>(thisDeserializer.readInt32());
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valueValueTempTmpBufUnionSelector == 2) {
            valueValueTempTmpBuf.selector = 2;
            valueValueTempTmpBuf.value2 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (valueValueTempTmpBufUnionSelector == 3) {
            valueValueTempTmpBuf.selector = 3;
            valueValueTempTmpBuf.value3 = Resource_serializer::read(thisDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_ResourceColor valueValueTemp = static_cast<Ark_ResourceColor>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getBlankModifier()->setColor(self, static_cast<Ark_ResourceColor*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(BlankAttribute_setColor, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_Button_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getButtonModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(Button_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_ButtonInterface_setButtonOptions(Ark_NativePointer thisPtr) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getButtonModifier()->setButtonOptions(self);
}
KOALA_INTEROP_DIRECT_V1(ButtonInterface_setButtonOptions, Ark_NativePointer)
void impl_ButtonAttribute_setType(Ark_NativePointer thisPtr, Ark_Int32 value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getButtonModifier()->setType(self, static_cast<Ark_ButtonType>(value));
}
KOALA_INTEROP_DIRECT_V2(ButtonAttribute_setType, Ark_NativePointer, Ark_Int32)
void impl_ButtonAttribute_setLabelStyle(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_LabelStyle valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valueValueTempTmpBuf.value = LabelStyle_serializer::read(thisDeserializer);
        }
        Opt_LabelStyle valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getButtonModifier()->setLabelStyle(self, static_cast<Opt_LabelStyle*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(ButtonAttribute_setLabelStyle, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_CalendarPicker_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getCalendarPickerModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(CalendarPicker_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_CalendarPickerInterface_setCalendarPickerOptions(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto optionsValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_CalendarOptions optionsValueTempTmpBuf = {};
        optionsValueTempTmpBuf.tag = optionsValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((optionsValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            optionsValueTempTmpBuf.value = CalendarOptions_serializer::read(thisDeserializer);
        }
        Opt_CalendarOptions optionsValueTemp = optionsValueTempTmpBuf;;
        GetNodeModifiers()->getCalendarPickerModifier()->setCalendarPickerOptions(self, static_cast<Opt_CalendarOptions*>(&optionsValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CalendarPickerInterface_setCalendarPickerOptions, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CalendarPickerAttribute_setEdgeAlign(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto alignTypeValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_CalendarAlign alignTypeValueTempTmpBuf = {};
        alignTypeValueTempTmpBuf.tag = alignTypeValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((alignTypeValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            alignTypeValueTempTmpBuf.value = static_cast<Ark_CalendarAlign>(thisDeserializer.readInt32());
        }
        Opt_CalendarAlign alignTypeValueTemp = alignTypeValueTempTmpBuf;;
        const auto offsetValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Offset offsetValueTempTmpBuf = {};
        offsetValueTempTmpBuf.tag = offsetValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((offsetValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            Ark_Offset offsetValueTempTmpBufOpt = {};
            const Ark_Int8 offsetValueTempTmpBufOptDxTempBufUnionSelector = thisDeserializer.readInt8();
            Ark_Length offsetValueTempTmpBufOptDxTempBuf = {};
            offsetValueTempTmpBufOptDxTempBuf.selector = offsetValueTempTmpBufOptDxTempBufUnionSelector;
            if (offsetValueTempTmpBufOptDxTempBufUnionSelector == 0) {
                offsetValueTempTmpBufOptDxTempBuf.selector = 0;
                offsetValueTempTmpBufOptDxTempBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
            } else if (offsetValueTempTmpBufOptDxTempBufUnionSelector == 1) {
                offsetValueTempTmpBufOptDxTempBuf.selector = 1;
                offsetValueTempTmpBufOptDxTempBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
            } else if (offsetValueTempTmpBufOptDxTempBufUnionSelector == 2) {
                offsetValueTempTmpBufOptDxTempBuf.selector = 2;
                offsetValueTempTmpBufOptDxTempBuf.value2 = Resource_serializer::read(thisDeserializer);
            } else {
                INTEROP_FATAL("One of the branches for offsetValueTempTmpBufOptDxTempBuf has to be chosen through deserialisation.");
            }
            offsetValueTempTmpBufOpt.dx = static_cast<Ark_Length>(offsetValueTempTmpBufOptDxTempBuf);
            const Ark_Int8 offsetValueTempTmpBufOptDyTempBufUnionSelector = thisDeserializer.readInt8();
            Ark_Length offsetValueTempTmpBufOptDyTempBuf = {};
            offsetValueTempTmpBufOptDyTempBuf.selector = offsetValueTempTmpBufOptDyTempBufUnionSelector;
            if (offsetValueTempTmpBufOptDyTempBufUnionSelector == 0) {
                offsetValueTempTmpBufOptDyTempBuf.selector = 0;
                offsetValueTempTmpBufOptDyTempBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
            } else if (offsetValueTempTmpBufOptDyTempBufUnionSelector == 1) {
                offsetValueTempTmpBufOptDyTempBuf.selector = 1;
                offsetValueTempTmpBufOptDyTempBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
            } else if (offsetValueTempTmpBufOptDyTempBufUnionSelector == 2) {
                offsetValueTempTmpBufOptDyTempBuf.selector = 2;
                offsetValueTempTmpBufOptDyTempBuf.value2 = Resource_serializer::read(thisDeserializer);
            } else {
                INTEROP_FATAL("One of the branches for offsetValueTempTmpBufOptDyTempBuf has to be chosen through deserialisation.");
            }
            offsetValueTempTmpBufOpt.dy = static_cast<Ark_Length>(offsetValueTempTmpBufOptDyTempBuf);
            offsetValueTempTmpBuf.value = offsetValueTempTmpBufOpt;
        }
        Opt_Offset offsetValueTemp = offsetValueTempTmpBuf;;
        GetNodeModifiers()->getCalendarPickerModifier()->setEdgeAlign(self, static_cast<Opt_CalendarAlign*>(&alignTypeValueTemp), static_cast<Opt_Offset*>(&offsetValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CalendarPickerAttribute_setEdgeAlign, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CalendarPickerAttribute_setAltEdgeAlign(Ark_NativePointer thisPtr, Ark_Int32 alignType, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto offsetValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_AltOffset offsetValueTempTmpBuf = {};
        offsetValueTempTmpBuf.tag = offsetValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((offsetValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            Ark_AltOffset offsetValueTempTmpBufOpt = {};
            const Ark_Int8 offsetValueTempTmpBufOptDx1TempBufUnionSelector = thisDeserializer.readInt8();
            Ark_Length offsetValueTempTmpBufOptDx1TempBuf = {};
            offsetValueTempTmpBufOptDx1TempBuf.selector = offsetValueTempTmpBufOptDx1TempBufUnionSelector;
            if (offsetValueTempTmpBufOptDx1TempBufUnionSelector == 0) {
                offsetValueTempTmpBufOptDx1TempBuf.selector = 0;
                offsetValueTempTmpBufOptDx1TempBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
            } else if (offsetValueTempTmpBufOptDx1TempBufUnionSelector == 1) {
                offsetValueTempTmpBufOptDx1TempBuf.selector = 1;
                offsetValueTempTmpBufOptDx1TempBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
            } else if (offsetValueTempTmpBufOptDx1TempBufUnionSelector == 2) {
                offsetValueTempTmpBufOptDx1TempBuf.selector = 2;
                offsetValueTempTmpBufOptDx1TempBuf.value2 = Resource_serializer::read(thisDeserializer);
            } else {
                INTEROP_FATAL("One of the branches for offsetValueTempTmpBufOptDx1TempBuf has to be chosen through deserialisation.");
            }
            offsetValueTempTmpBufOpt.dx1 = static_cast<Ark_Length>(offsetValueTempTmpBufOptDx1TempBuf);
            const Ark_Int8 offsetValueTempTmpBufOptDy2TempBufUnionSelector = thisDeserializer.readInt8();
            Ark_Length offsetValueTempTmpBufOptDy2TempBuf = {};
            offsetValueTempTmpBufOptDy2TempBuf.selector = offsetValueTempTmpBufOptDy2TempBufUnionSelector;
            if (offsetValueTempTmpBufOptDy2TempBufUnionSelector == 0) {
                offsetValueTempTmpBufOptDy2TempBuf.selector = 0;
                offsetValueTempTmpBufOptDy2TempBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
            } else if (offsetValueTempTmpBufOptDy2TempBufUnionSelector == 1) {
                offsetValueTempTmpBufOptDy2TempBuf.selector = 1;
                offsetValueTempTmpBufOptDy2TempBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
            } else if (offsetValueTempTmpBufOptDy2TempBufUnionSelector == 2) {
                offsetValueTempTmpBufOptDy2TempBuf.selector = 2;
                offsetValueTempTmpBufOptDy2TempBuf.value2 = Resource_serializer::read(thisDeserializer);
            } else {
                INTEROP_FATAL("One of the branches for offsetValueTempTmpBufOptDy2TempBuf has to be chosen through deserialisation.");
            }
            offsetValueTempTmpBufOpt.dy2 = static_cast<Ark_Length>(offsetValueTempTmpBufOptDy2TempBuf);
            offsetValueTempTmpBuf.value = offsetValueTempTmpBufOpt;
        }
        Opt_AltOffset offsetValueTemp = offsetValueTempTmpBuf;;
        GetNodeModifiers()->getCalendarPickerModifier()->setAltEdgeAlign(self, static_cast<Ark_CalendarAlign>(alignType), static_cast<Opt_AltOffset*>(&offsetValueTemp));
}
KOALA_INTEROP_DIRECT_V4(CalendarPickerAttribute_setAltEdgeAlign, Ark_NativePointer, Ark_Int32, KSerializerBuffer, int32_t)
Ark_NativePointer impl_Canvas_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getCanvasModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(Canvas_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_CanvasInterface_setCanvasOptions(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto contextValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Union_CanvasRenderingContext2D_DrawingRenderingContext contextValueTempTmpBuf = {};
        contextValueTempTmpBuf.tag = contextValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((contextValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            const Ark_Int8 contextValueTempTmpBufOptUnionSelector = thisDeserializer.readInt8();
            Ark_Union_CanvasRenderingContext2D_DrawingRenderingContext contextValueTempTmpBufOpt = {};
            contextValueTempTmpBufOpt.selector = contextValueTempTmpBufOptUnionSelector;
            if (contextValueTempTmpBufOptUnionSelector == 0) {
                contextValueTempTmpBufOpt.selector = 0;
                contextValueTempTmpBufOpt.value0 = static_cast<Ark_CanvasRenderingContext2D>(CanvasRenderingContext2D_serializer::read(thisDeserializer));
            } else if (contextValueTempTmpBufOptUnionSelector == 1) {
                contextValueTempTmpBufOpt.selector = 1;
                contextValueTempTmpBufOpt.value1 = static_cast<Ark_DrawingRenderingContext>(DrawingRenderingContext_serializer::read(thisDeserializer));
            } else {
                INTEROP_FATAL("One of the branches for contextValueTempTmpBufOpt has to be chosen through deserialisation.");
            }
            contextValueTempTmpBuf.value = static_cast<Ark_Union_CanvasRenderingContext2D_DrawingRenderingContext>(contextValueTempTmpBufOpt);
        }
        Opt_Union_CanvasRenderingContext2D_DrawingRenderingContext contextValueTemp = contextValueTempTmpBuf;;
        GetNodeModifiers()->getCanvasModifier()->setCanvasOptions(self, static_cast<Opt_Union_CanvasRenderingContext2D_DrawingRenderingContext*>(&contextValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CanvasInterface_setCanvasOptions, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CanvasAttribute_setOnReady(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Void eventValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_VOID))))};;
        GetNodeModifiers()->getCanvasModifier()->setOnReady(self, static_cast<Callback_Void*>(&eventValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CanvasAttribute_setOnReady, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CanvasAttribute_setEnableAnalyzer(Ark_NativePointer thisPtr, Ark_Boolean enable) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getCanvasModifier()->setEnableAnalyzer(self, enable);
}
KOALA_INTEROP_DIRECT_V2(CanvasAttribute_setEnableAnalyzer, Ark_NativePointer, Ark_Boolean)
Ark_NativePointer impl_Column_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getColumnModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(Column_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_ColumnInterface_setColumnOptions(Ark_NativePointer thisPtr) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getColumnModifier()->setColumnOptions(self);
}
KOALA_INTEROP_DIRECT_V1(ColumnInterface_setColumnOptions, Ark_NativePointer)
void impl_ColumnAttribute_setAlignItems(Ark_NativePointer thisPtr, Ark_Int32 value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getColumnModifier()->setAlignItems(self, static_cast<Ark_HorizontalAlign>(value));
}
KOALA_INTEROP_DIRECT_V2(ColumnAttribute_setAlignItems, Ark_NativePointer, Ark_Int32)
Ark_NativePointer impl_Common_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getCommonModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(Common_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_CommonInterface_setCommonOptions(Ark_NativePointer thisPtr) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getCommonModifier()->setCommonOptions(self);
}
KOALA_INTEROP_DIRECT_V1(CommonInterface_setCommonOptions, Ark_NativePointer)
Ark_NativePointer impl_CommonMethod_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getCommonMethodModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(CommonMethod_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_CommonMethod_setBackdropBlur(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto radiusValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number radiusValueTempTmpBuf = {};
        radiusValueTempTmpBuf.tag = radiusValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((radiusValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            radiusValueTempTmpBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Opt_Number radiusValueTemp = radiusValueTempTmpBuf;;
        const auto optionsValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_BlurOptions optionsValueTempTmpBuf = {};
        optionsValueTempTmpBuf.tag = optionsValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((optionsValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            optionsValueTempTmpBuf.value = BlurOptions_serializer::read(thisDeserializer);
        }
        Opt_BlurOptions optionsValueTemp = optionsValueTempTmpBuf;;
        GetNodeModifiers()->getCommonMethodModifier()->setBackdropBlur(self, static_cast<Opt_Number*>(&radiusValueTemp), static_cast<Opt_BlurOptions*>(&optionsValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CommonMethod_setBackdropBlur, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CommonMethod_setWidth(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto widthValueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Union_Length_LayoutPolicy widthValueValueTempTmpBuf = {};
        widthValueValueTempTmpBuf.tag = widthValueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((widthValueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            const Ark_Int8 widthValueValueTempTmpBufOptUnionSelector = thisDeserializer.readInt8();
            Ark_Union_Length_LayoutPolicy widthValueValueTempTmpBufOpt = {};
            widthValueValueTempTmpBufOpt.selector = widthValueValueTempTmpBufOptUnionSelector;
            if (widthValueValueTempTmpBufOptUnionSelector == 0) {
                widthValueValueTempTmpBufOpt.selector = 0;
                const Ark_Int8 widthValueValueTempTmpBufOptBufUUnionSelector = thisDeserializer.readInt8();
                Ark_Length widthValueValueTempTmpBufOptBufU = {};
                widthValueValueTempTmpBufOptBufU.selector = widthValueValueTempTmpBufOptBufUUnionSelector;
                if (widthValueValueTempTmpBufOptBufUUnionSelector == 0) {
                    widthValueValueTempTmpBufOptBufU.selector = 0;
                    widthValueValueTempTmpBufOptBufU.value0 = static_cast<Ark_String>(thisDeserializer.readString());
                } else if (widthValueValueTempTmpBufOptBufUUnionSelector == 1) {
                    widthValueValueTempTmpBufOptBufU.selector = 1;
                    widthValueValueTempTmpBufOptBufU.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                } else if (widthValueValueTempTmpBufOptBufUUnionSelector == 2) {
                    widthValueValueTempTmpBufOptBufU.selector = 2;
                    widthValueValueTempTmpBufOptBufU.value2 = Resource_serializer::read(thisDeserializer);
                } else {
                    INTEROP_FATAL("One of the branches for widthValueValueTempTmpBufOptBufU has to be chosen through deserialisation.");
                }
                widthValueValueTempTmpBufOpt.value0 = static_cast<Ark_Length>(widthValueValueTempTmpBufOptBufU);
            } else if (widthValueValueTempTmpBufOptUnionSelector == 1) {
                widthValueValueTempTmpBufOpt.selector = 1;
                widthValueValueTempTmpBufOpt.value1 = LayoutPolicy_serializer::read(thisDeserializer);
            } else {
                INTEROP_FATAL("One of the branches for widthValueValueTempTmpBufOpt has to be chosen through deserialisation.");
            }
            widthValueValueTempTmpBuf.value = static_cast<Ark_Union_Length_LayoutPolicy>(widthValueValueTempTmpBufOpt);
        }
        Opt_Union_Length_LayoutPolicy widthValueValueTemp = widthValueValueTempTmpBuf;;
        GetNodeModifiers()->getCommonMethodModifier()->setWidth(self, static_cast<Opt_Union_Length_LayoutPolicy*>(&widthValueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CommonMethod_setWidth, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CommonMethod_setHeight(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto heightValueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Union_Length_LayoutPolicy heightValueValueTempTmpBuf = {};
        heightValueValueTempTmpBuf.tag = heightValueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((heightValueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            const Ark_Int8 heightValueValueTempTmpBufOptUnionSelector = thisDeserializer.readInt8();
            Ark_Union_Length_LayoutPolicy heightValueValueTempTmpBufOpt = {};
            heightValueValueTempTmpBufOpt.selector = heightValueValueTempTmpBufOptUnionSelector;
            if (heightValueValueTempTmpBufOptUnionSelector == 0) {
                heightValueValueTempTmpBufOpt.selector = 0;
                const Ark_Int8 heightValueValueTempTmpBufOptBufUUnionSelector = thisDeserializer.readInt8();
                Ark_Length heightValueValueTempTmpBufOptBufU = {};
                heightValueValueTempTmpBufOptBufU.selector = heightValueValueTempTmpBufOptBufUUnionSelector;
                if (heightValueValueTempTmpBufOptBufUUnionSelector == 0) {
                    heightValueValueTempTmpBufOptBufU.selector = 0;
                    heightValueValueTempTmpBufOptBufU.value0 = static_cast<Ark_String>(thisDeserializer.readString());
                } else if (heightValueValueTempTmpBufOptBufUUnionSelector == 1) {
                    heightValueValueTempTmpBufOptBufU.selector = 1;
                    heightValueValueTempTmpBufOptBufU.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                } else if (heightValueValueTempTmpBufOptBufUUnionSelector == 2) {
                    heightValueValueTempTmpBufOptBufU.selector = 2;
                    heightValueValueTempTmpBufOptBufU.value2 = Resource_serializer::read(thisDeserializer);
                } else {
                    INTEROP_FATAL("One of the branches for heightValueValueTempTmpBufOptBufU has to be chosen through deserialisation.");
                }
                heightValueValueTempTmpBufOpt.value0 = static_cast<Ark_Length>(heightValueValueTempTmpBufOptBufU);
            } else if (heightValueValueTempTmpBufOptUnionSelector == 1) {
                heightValueValueTempTmpBufOpt.selector = 1;
                heightValueValueTempTmpBufOpt.value1 = LayoutPolicy_serializer::read(thisDeserializer);
            } else {
                INTEROP_FATAL("One of the branches for heightValueValueTempTmpBufOpt has to be chosen through deserialisation.");
            }
            heightValueValueTempTmpBuf.value = static_cast<Ark_Union_Length_LayoutPolicy>(heightValueValueTempTmpBufOpt);
        }
        Opt_Union_Length_LayoutPolicy heightValueValueTemp = heightValueValueTempTmpBuf;;
        GetNodeModifiers()->getCommonMethodModifier()->setHeight(self, static_cast<Opt_Union_Length_LayoutPolicy*>(&heightValueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CommonMethod_setHeight, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CommonMethod_setKey(Ark_NativePointer thisPtr, const KStringPtr& value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getCommonMethodModifier()->setKey(self, (const Ark_String*) (&value));
}
KOALA_INTEROP_V2(CommonMethod_setKey, Ark_NativePointer, KStringPtr)
void impl_CommonMethod_setRestoreId(Ark_NativePointer thisPtr, KInteropNumber value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getCommonMethodModifier()->setRestoreId(self, (const Ark_Number*) (&value));
}
KOALA_INTEROP_V2(CommonMethod_setRestoreId, Ark_NativePointer, KInteropNumber)
void impl_CommonMethod_setPadding(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_Padding_Dimension valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            Ark_Padding valueValueTempTmpBufBufU = {};
            const auto valueValueTempTmpBufBufUTopTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
            Opt_Length valueValueTempTmpBufBufUTopTempBuf = {};
            valueValueTempTmpBufBufUTopTempBuf.tag = valueValueTempTmpBufBufUTopTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
            if ((valueValueTempTmpBufBufUTopTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                const Ark_Int8 valueValueTempTmpBufBufUTopTempBufOptUnionSelector = thisDeserializer.readInt8();
                Ark_Length valueValueTempTmpBufBufUTopTempBufOpt = {};
                valueValueTempTmpBufBufUTopTempBufOpt.selector = valueValueTempTmpBufBufUTopTempBufOptUnionSelector;
                if (valueValueTempTmpBufBufUTopTempBufOptUnionSelector == 0) {
                    valueValueTempTmpBufBufUTopTempBufOpt.selector = 0;
                    valueValueTempTmpBufBufUTopTempBufOpt.value0 = static_cast<Ark_String>(thisDeserializer.readString());
                } else if (valueValueTempTmpBufBufUTopTempBufOptUnionSelector == 1) {
                    valueValueTempTmpBufBufUTopTempBufOpt.selector = 1;
                    valueValueTempTmpBufBufUTopTempBufOpt.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                } else if (valueValueTempTmpBufBufUTopTempBufOptUnionSelector == 2) {
                    valueValueTempTmpBufBufUTopTempBufOpt.selector = 2;
                    valueValueTempTmpBufBufUTopTempBufOpt.value2 = Resource_serializer::read(thisDeserializer);
                } else {
                    INTEROP_FATAL("One of the branches for valueValueTempTmpBufBufUTopTempBufOpt has to be chosen through deserialisation.");
                }
                valueValueTempTmpBufBufUTopTempBuf.value = static_cast<Ark_Length>(valueValueTempTmpBufBufUTopTempBufOpt);
            }
            valueValueTempTmpBufBufU.top = valueValueTempTmpBufBufUTopTempBuf;
            const auto valueValueTempTmpBufBufURightTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
            Opt_Length valueValueTempTmpBufBufURightTempBuf = {};
            valueValueTempTmpBufBufURightTempBuf.tag = valueValueTempTmpBufBufURightTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
            if ((valueValueTempTmpBufBufURightTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                const Ark_Int8 valueValueTempTmpBufBufURightTempBufOptUnionSelector = thisDeserializer.readInt8();
                Ark_Length valueValueTempTmpBufBufURightTempBufOpt = {};
                valueValueTempTmpBufBufURightTempBufOpt.selector = valueValueTempTmpBufBufURightTempBufOptUnionSelector;
                if (valueValueTempTmpBufBufURightTempBufOptUnionSelector == 0) {
                    valueValueTempTmpBufBufURightTempBufOpt.selector = 0;
                    valueValueTempTmpBufBufURightTempBufOpt.value0 = static_cast<Ark_String>(thisDeserializer.readString());
                } else if (valueValueTempTmpBufBufURightTempBufOptUnionSelector == 1) {
                    valueValueTempTmpBufBufURightTempBufOpt.selector = 1;
                    valueValueTempTmpBufBufURightTempBufOpt.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                } else if (valueValueTempTmpBufBufURightTempBufOptUnionSelector == 2) {
                    valueValueTempTmpBufBufURightTempBufOpt.selector = 2;
                    valueValueTempTmpBufBufURightTempBufOpt.value2 = Resource_serializer::read(thisDeserializer);
                } else {
                    INTEROP_FATAL("One of the branches for valueValueTempTmpBufBufURightTempBufOpt has to be chosen through deserialisation.");
                }
                valueValueTempTmpBufBufURightTempBuf.value = static_cast<Ark_Length>(valueValueTempTmpBufBufURightTempBufOpt);
            }
            valueValueTempTmpBufBufU.right = valueValueTempTmpBufBufURightTempBuf;
            const auto valueValueTempTmpBufBufUBottomTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
            Opt_Length valueValueTempTmpBufBufUBottomTempBuf = {};
            valueValueTempTmpBufBufUBottomTempBuf.tag = valueValueTempTmpBufBufUBottomTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
            if ((valueValueTempTmpBufBufUBottomTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                const Ark_Int8 valueValueTempTmpBufBufUBottomTempBufOptUnionSelector = thisDeserializer.readInt8();
                Ark_Length valueValueTempTmpBufBufUBottomTempBufOpt = {};
                valueValueTempTmpBufBufUBottomTempBufOpt.selector = valueValueTempTmpBufBufUBottomTempBufOptUnionSelector;
                if (valueValueTempTmpBufBufUBottomTempBufOptUnionSelector == 0) {
                    valueValueTempTmpBufBufUBottomTempBufOpt.selector = 0;
                    valueValueTempTmpBufBufUBottomTempBufOpt.value0 = static_cast<Ark_String>(thisDeserializer.readString());
                } else if (valueValueTempTmpBufBufUBottomTempBufOptUnionSelector == 1) {
                    valueValueTempTmpBufBufUBottomTempBufOpt.selector = 1;
                    valueValueTempTmpBufBufUBottomTempBufOpt.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                } else if (valueValueTempTmpBufBufUBottomTempBufOptUnionSelector == 2) {
                    valueValueTempTmpBufBufUBottomTempBufOpt.selector = 2;
                    valueValueTempTmpBufBufUBottomTempBufOpt.value2 = Resource_serializer::read(thisDeserializer);
                } else {
                    INTEROP_FATAL("One of the branches for valueValueTempTmpBufBufUBottomTempBufOpt has to be chosen through deserialisation.");
                }
                valueValueTempTmpBufBufUBottomTempBuf.value = static_cast<Ark_Length>(valueValueTempTmpBufBufUBottomTempBufOpt);
            }
            valueValueTempTmpBufBufU.bottom = valueValueTempTmpBufBufUBottomTempBuf;
            const auto valueValueTempTmpBufBufULeftTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
            Opt_Length valueValueTempTmpBufBufULeftTempBuf = {};
            valueValueTempTmpBufBufULeftTempBuf.tag = valueValueTempTmpBufBufULeftTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
            if ((valueValueTempTmpBufBufULeftTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                const Ark_Int8 valueValueTempTmpBufBufULeftTempBufOptUnionSelector = thisDeserializer.readInt8();
                Ark_Length valueValueTempTmpBufBufULeftTempBufOpt = {};
                valueValueTempTmpBufBufULeftTempBufOpt.selector = valueValueTempTmpBufBufULeftTempBufOptUnionSelector;
                if (valueValueTempTmpBufBufULeftTempBufOptUnionSelector == 0) {
                    valueValueTempTmpBufBufULeftTempBufOpt.selector = 0;
                    valueValueTempTmpBufBufULeftTempBufOpt.value0 = static_cast<Ark_String>(thisDeserializer.readString());
                } else if (valueValueTempTmpBufBufULeftTempBufOptUnionSelector == 1) {
                    valueValueTempTmpBufBufULeftTempBufOpt.selector = 1;
                    valueValueTempTmpBufBufULeftTempBufOpt.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                } else if (valueValueTempTmpBufBufULeftTempBufOptUnionSelector == 2) {
                    valueValueTempTmpBufBufULeftTempBufOpt.selector = 2;
                    valueValueTempTmpBufBufULeftTempBufOpt.value2 = Resource_serializer::read(thisDeserializer);
                } else {
                    INTEROP_FATAL("One of the branches for valueValueTempTmpBufBufULeftTempBufOpt has to be chosen through deserialisation.");
                }
                valueValueTempTmpBufBufULeftTempBuf.value = static_cast<Ark_Length>(valueValueTempTmpBufBufULeftTempBufOpt);
            }
            valueValueTempTmpBufBufU.left = valueValueTempTmpBufBufULeftTempBuf;
            valueValueTempTmpBuf.value0 = valueValueTempTmpBufBufU;
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            const Ark_Int8 valueValueTempTmpBufBufUUnionSelector = thisDeserializer.readInt8();
            Ark_Dimension valueValueTempTmpBufBufU = {};
            valueValueTempTmpBufBufU.selector = valueValueTempTmpBufBufUUnionSelector;
            if (valueValueTempTmpBufBufUUnionSelector == 0) {
                valueValueTempTmpBufBufU.selector = 0;
                valueValueTempTmpBufBufU.value0 = static_cast<Ark_String>(thisDeserializer.readString());
            } else if (valueValueTempTmpBufBufUUnionSelector == 1) {
                valueValueTempTmpBufBufU.selector = 1;
                valueValueTempTmpBufBufU.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
            } else if (valueValueTempTmpBufBufUUnionSelector == 2) {
                valueValueTempTmpBufBufU.selector = 2;
                valueValueTempTmpBufBufU.value2 = Resource_serializer::read(thisDeserializer);
            } else {
                INTEROP_FATAL("One of the branches for valueValueTempTmpBufBufU has to be chosen through deserialisation.");
            }
            valueValueTempTmpBuf.value1 = static_cast<Ark_Dimension>(valueValueTempTmpBufBufU);
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_Padding_Dimension valueValueTemp = static_cast<Ark_Union_Padding_Dimension>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getCommonMethodModifier()->setPadding(self, static_cast<Ark_Union_Padding_Dimension*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CommonMethod_setPadding, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CommonMethod_setBackground(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        CustomBuilder builderValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CUSTOMBUILDER)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CUSTOMBUILDER))))};;
        const auto optionsValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Literal_Alignment_align optionsValueTempTmpBuf = {};
        optionsValueTempTmpBuf.tag = optionsValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((optionsValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            Ark_Literal_Alignment_align optionsValueTempTmpBufOpt = {};
            const auto optionsValueTempTmpBufOptAlignTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
            Opt_Alignment optionsValueTempTmpBufOptAlignTempBuf = {};
            optionsValueTempTmpBufOptAlignTempBuf.tag = optionsValueTempTmpBufOptAlignTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
            if ((optionsValueTempTmpBufOptAlignTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                optionsValueTempTmpBufOptAlignTempBuf.value = static_cast<Ark_Alignment>(thisDeserializer.readInt32());
            }
            optionsValueTempTmpBufOpt.align = optionsValueTempTmpBufOptAlignTempBuf;
            optionsValueTempTmpBuf.value = optionsValueTempTmpBufOpt;
        }
        Opt_Literal_Alignment_align optionsValueTemp = optionsValueTempTmpBuf;;
        GetNodeModifiers()->getCommonMethodModifier()->setBackground(self, static_cast<CustomBuilder*>(&builderValueTemp), static_cast<Opt_Literal_Alignment_align*>(&optionsValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CommonMethod_setBackground, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CommonMethod_setBindSheet(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto isShowValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Boolean isShowValueTempTmpBuf = {};
        isShowValueTempTmpBuf.tag = isShowValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((isShowValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            isShowValueTempTmpBuf.value = thisDeserializer.readBoolean();
        }
        Opt_Boolean isShowValueTemp = isShowValueTempTmpBuf;;
        CustomBuilder builderValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CUSTOMBUILDER)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CUSTOMBUILDER))))};;
        const auto optionsValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_SheetOptions optionsValueTempTmpBuf = {};
        optionsValueTempTmpBuf.tag = optionsValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((optionsValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            optionsValueTempTmpBuf.value = SheetOptions_serializer::read(thisDeserializer);
        }
        Opt_SheetOptions optionsValueTemp = optionsValueTempTmpBuf;;
        GetNodeModifiers()->getCommonMethodModifier()->setBindSheet(self, static_cast<Opt_Boolean*>(&isShowValueTemp), static_cast<CustomBuilder*>(&builderValueTemp), static_cast<Opt_SheetOptions*>(&optionsValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CommonMethod_setBindSheet, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CommonMethod_setBackgroundBlurStyle(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto styleValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_BlurStyle styleValueTempTmpBuf = {};
        styleValueTempTmpBuf.tag = styleValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((styleValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            styleValueTempTmpBuf.value = static_cast<Ark_BlurStyle>(thisDeserializer.readInt32());
        }
        Opt_BlurStyle styleValueTemp = styleValueTempTmpBuf;;
        const auto optionsValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_BackgroundBlurStyleOptions optionsValueTempTmpBuf = {};
        optionsValueTempTmpBuf.tag = optionsValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((optionsValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            optionsValueTempTmpBuf.value = BackgroundBlurStyleOptions_serializer::read(thisDeserializer);
        }
        Opt_BackgroundBlurStyleOptions optionsValueTemp = optionsValueTempTmpBuf;;
        GetNodeModifiers()->getCommonMethodModifier()->setBackgroundBlurStyle(self, static_cast<Opt_BlurStyle*>(&styleValueTemp), static_cast<Opt_BackgroundBlurStyleOptions*>(&optionsValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CommonMethod_setBackgroundBlurStyle, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CommonMethod_setDragPreviewOptions(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_DragPreviewOptions valueValueTemp = DragPreviewOptions_serializer::read(thisDeserializer);;
        const auto optionsValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_DragInteractionOptions optionsValueTempTmpBuf = {};
        optionsValueTempTmpBuf.tag = optionsValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((optionsValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            optionsValueTempTmpBuf.value = DragInteractionOptions_serializer::read(thisDeserializer);
        }
        Opt_DragInteractionOptions optionsValueTemp = optionsValueTempTmpBuf;;
        GetNodeModifiers()->getCommonMethodModifier()->setDragPreviewOptions(self, static_cast<Ark_DragPreviewOptions*>(&valueValueTemp), static_cast<Opt_DragInteractionOptions*>(&optionsValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CommonMethod_setDragPreviewOptions, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CommonMethod_setLinearGradient(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto optionsValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_LinearGradientOptions optionsValueTempTmpBuf = {};
        optionsValueTempTmpBuf.tag = optionsValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((optionsValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            optionsValueTempTmpBuf.value = LinearGradientOptions_serializer::read(thisDeserializer);
        }
        Opt_LinearGradientOptions optionsValueTemp = optionsValueTempTmpBuf;;
        GetNodeModifiers()->getCommonMethodModifier()->setLinearGradient(self, static_cast<Opt_LinearGradientOptions*>(&optionsValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CommonMethod_setLinearGradient, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CommonMethod_setBorder(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_BorderOptions valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valueValueTempTmpBuf.value = BorderOptions_serializer::read(thisDeserializer);
        }
        Opt_BorderOptions valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getCommonMethodModifier()->setBorder(self, static_cast<Opt_BorderOptions*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CommonMethod_setBorder, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CommonMethod_setSize(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_SizeOptions valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valueValueTempTmpBuf.value = SizeOptions_serializer::read(thisDeserializer);
        }
        Opt_SizeOptions valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getCommonMethodModifier()->setSize(self, static_cast<Opt_SizeOptions*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CommonMethod_setSize, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CommonMethod_setTransform(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Object valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valueValueTempTmpBuf.value = static_cast<Ark_Object>(thisDeserializer.readObject());
        }
        Opt_Object valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getCommonMethodModifier()->setTransform(self, static_cast<Opt_Object*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CommonMethod_setTransform, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CommonMethod_setOnChildTouchTest(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Array_TouchTestInfo_String eventValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Array_TouchTestInfo value, const Callback_String_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_ARRAY_TOUCHTESTINFO_STRING)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Array_TouchTestInfo value, const Callback_String_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_ARRAY_TOUCHTESTINFO_STRING))))};;
        GetNodeModifiers()->getCommonMethodModifier()->setOnChildTouchTest(self, static_cast<Callback_Array_TouchTestInfo_String*>(&eventValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CommonMethod_setOnChildTouchTest, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CommonMethod_setOnGestureRecognizerJudgeBegin(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        GestureRecognizerJudgeBeginCallback callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_BaseGestureEvent event, const Ark_GestureRecognizer current, const Array_GestureRecognizer recognizers, const Callback_GestureJudgeResult_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_GESTURERECOGNIZERJUDGEBEGINCALLBACK)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_BaseGestureEvent event, const Ark_GestureRecognizer current, const Array_GestureRecognizer recognizers, const Callback_GestureJudgeResult_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_GESTURERECOGNIZERJUDGEBEGINCALLBACK))))};;
        GetNodeModifiers()->getCommonMethodModifier()->setOnGestureRecognizerJudgeBegin(self, static_cast<GestureRecognizerJudgeBeginCallback*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CommonMethod_setOnGestureRecognizerJudgeBegin, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CommonMethod_setOnClick(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength, KInteropNumber distanceThreshold) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_ClickEvent_Void eventValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_ClickEvent data)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_CLICKEVENT_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_ClickEvent data)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_CLICKEVENT_VOID))))};;
        GetNodeModifiers()->getCommonMethodModifier()->setOnClick(self, static_cast<Callback_ClickEvent_Void*>(&eventValueTemp), (const Ark_Number*) (&distanceThreshold));
}
KOALA_INTEROP_V4(CommonMethod_setOnClick, Ark_NativePointer, KSerializerBuffer, int32_t, KInteropNumber)
void impl_CommonMethod_setBackgroundColor(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_ResourceColor valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            valueValueTempTmpBuf.value0 = static_cast<Ark_Color>(thisDeserializer.readInt32());
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valueValueTempTmpBufUnionSelector == 2) {
            valueValueTempTmpBuf.selector = 2;
            valueValueTempTmpBuf.value2 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (valueValueTempTmpBufUnionSelector == 3) {
            valueValueTempTmpBuf.selector = 3;
            valueValueTempTmpBuf.value3 = Resource_serializer::read(thisDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_ResourceColor valueValueTemp = static_cast<Ark_ResourceColor>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getCommonMethodModifier()->setBackgroundColor(self, static_cast<Ark_ResourceColor*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CommonMethod_setBackgroundColor, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_CommonShapeMethod_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getCommonShapeMethodModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(CommonShapeMethod_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_CommonShapeMethod_setStroke(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_ResourceColor valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            valueValueTempTmpBuf.value0 = static_cast<Ark_Color>(thisDeserializer.readInt32());
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valueValueTempTmpBufUnionSelector == 2) {
            valueValueTempTmpBuf.selector = 2;
            valueValueTempTmpBuf.value2 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (valueValueTempTmpBufUnionSelector == 3) {
            valueValueTempTmpBuf.selector = 3;
            valueValueTempTmpBuf.value3 = Resource_serializer::read(thisDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_ResourceColor valueValueTemp = static_cast<Ark_ResourceColor>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getCommonShapeMethodModifier()->setStroke(self, static_cast<Ark_ResourceColor*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CommonShapeMethod_setStroke, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_ScrollableCommonMethod_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getScrollableCommonMethodModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(ScrollableCommonMethod_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_ScrollableCommonMethod_setScrollBarWidth(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_Number_String valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            valueValueTempTmpBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = static_cast<Ark_String>(thisDeserializer.readString());
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_Number_String valueValueTemp = static_cast<Ark_Union_Number_String>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getScrollableCommonMethodModifier()->setScrollBarWidth(self, static_cast<Ark_Union_Number_String*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(ScrollableCommonMethod_setScrollBarWidth, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_EmbeddedComponent_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getEmbeddedComponentModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(EmbeddedComponent_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_EmbeddedComponentInterface_setEmbeddedComponentOptions(Ark_NativePointer thisPtr, Ark_NativePointer loader, Ark_Int32 type) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getEmbeddedComponentModifier()->setEmbeddedComponentOptions(self, static_cast<Ark_Want>(loader), static_cast<Ark_EmbeddedType>(type));
}
KOALA_INTEROP_DIRECT_V3(EmbeddedComponentInterface_setEmbeddedComponentOptions, Ark_NativePointer, Ark_NativePointer, Ark_Int32)
void impl_EmbeddedComponentAttribute_setOnTerminated(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_TerminationInfo_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_TerminationInfo data)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_TERMINATIONINFO_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_TerminationInfo data)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_TERMINATIONINFO_VOID))))};;
        GetNodeModifiers()->getEmbeddedComponentModifier()->setOnTerminated(self, static_cast<Callback_TerminationInfo_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(EmbeddedComponentAttribute_setOnTerminated, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_EmbeddedComponentAttribute_setOnError(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        ErrorCallback callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_ERRORCALLBACK)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_ERRORCALLBACK))))};;
        GetNodeModifiers()->getEmbeddedComponentModifier()->setOnError(self, static_cast<ErrorCallback*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(EmbeddedComponentAttribute_setOnError, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_FormComponent_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getFormComponentModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(FormComponent_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_FormComponentInterface_setFormComponentOptions(Ark_NativePointer thisPtr) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getFormComponentModifier()->setFormComponentOptions(self);
}
KOALA_INTEROP_DIRECT_V1(FormComponentInterface_setFormComponentOptions, Ark_NativePointer)
void impl_FormComponentAttribute_setOnAcquired(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_FormCallbackInfo_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_FormCallbackInfo data)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_FORMCALLBACKINFO_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_FormCallbackInfo data)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_FORMCALLBACKINFO_VOID))))};;
        GetNodeModifiers()->getFormComponentModifier()->setOnAcquired(self, static_cast<Callback_FormCallbackInfo_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(FormComponentAttribute_setOnAcquired, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_GridContainer_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getGridContainerModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(GridContainer_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_GridContainerInterface_setGridContainerOptions(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_GridContainerOptions valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valueValueTempTmpBuf.value = GridContainerOptions_serializer::read(thisDeserializer);
        }
        Opt_GridContainerOptions valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getGridContainerModifier()->setGridContainerOptions(self, static_cast<Opt_GridContainerOptions*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(GridContainerInterface_setGridContainerOptions, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_Image_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getImageModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(Image_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_ImageInterface_setImageOptions(Ark_NativePointer thisPtr) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getImageModifier()->setImageOptions(self);
}
KOALA_INTEROP_DIRECT_V1(ImageInterface_setImageOptions, Ark_NativePointer)
Ark_NativePointer impl_List_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getListModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(List_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_ListInterface_setListOptions(Ark_NativePointer thisPtr) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getListModifier()->setListOptions(self);
}
KOALA_INTEROP_DIRECT_V1(ListInterface_setListOptions, Ark_NativePointer)
void impl_ListAttribute_setSomeOptional(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto paramValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Boolean paramValueTempTmpBuf = {};
        paramValueTempTmpBuf.tag = paramValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((paramValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            paramValueTempTmpBuf.value = thisDeserializer.readBoolean();
        }
        Opt_Boolean paramValueTemp = paramValueTempTmpBuf;;
        GetNodeModifiers()->getListModifier()->setSomeOptional(self, static_cast<Opt_Boolean*>(&paramValueTemp));
}
KOALA_INTEROP_DIRECT_V3(ListAttribute_setSomeOptional, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_ListAttribute_setOnScrollVisibleContentChange(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        OnScrollVisibleContentChangeCallback handlerValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_VisibleListContentInfo start, const Ark_VisibleListContentInfo end)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_ONSCROLLVISIBLECONTENTCHANGECALLBACK)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_VisibleListContentInfo start, const Ark_VisibleListContentInfo end)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_ONSCROLLVISIBLECONTENTCHANGECALLBACK))))};;
        GetNodeModifiers()->getListModifier()->setOnScrollVisibleContentChange(self, static_cast<OnScrollVisibleContentChangeCallback*>(&handlerValueTemp));
}
KOALA_INTEROP_DIRECT_V3(ListAttribute_setOnScrollVisibleContentChange, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_NavDestination_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getNavDestinationModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(NavDestination_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_NavDestinationInterface_setNavDestinationOptions(Ark_NativePointer thisPtr) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getNavDestinationModifier()->setNavDestinationOptions(self);
}
KOALA_INTEROP_DIRECT_V1(NavDestinationInterface_setNavDestinationOptions, Ark_NativePointer)
void impl_NavDestinationAttribute_setTitle(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_String_CustomBuilder_NavDestinationCommonTitle_NavDestinationCustomTitle valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            valueValueTempTmpBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CUSTOMBUILDER)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CUSTOMBUILDER))))};
        } else if (valueValueTempTmpBufUnionSelector == 2) {
            valueValueTempTmpBuf.selector = 2;
            valueValueTempTmpBuf.value2 = NavDestinationCommonTitle_serializer::read(thisDeserializer);
        } else if (valueValueTempTmpBufUnionSelector == 3) {
            valueValueTempTmpBuf.selector = 3;
            valueValueTempTmpBuf.value3 = NavDestinationCustomTitle_serializer::read(thisDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_String_CustomBuilder_NavDestinationCommonTitle_NavDestinationCustomTitle valueValueTemp = static_cast<Ark_Union_String_CustomBuilder_NavDestinationCommonTitle_NavDestinationCustomTitle>(valueValueTempTmpBuf);;
        const auto optionsValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_NavigationTitleOptions optionsValueTempTmpBuf = {};
        optionsValueTempTmpBuf.tag = optionsValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((optionsValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            optionsValueTempTmpBuf.value = NavigationTitleOptions_serializer::read(thisDeserializer);
        }
        Opt_NavigationTitleOptions optionsValueTemp = optionsValueTempTmpBuf;;
        GetNodeModifiers()->getNavDestinationModifier()->setTitle(self, static_cast<Ark_Union_String_CustomBuilder_NavDestinationCommonTitle_NavDestinationCustomTitle*>(&valueValueTemp), static_cast<Opt_NavigationTitleOptions*>(&optionsValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavDestinationAttribute_setTitle, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavDestinationAttribute_setHideTitleBar(Ark_NativePointer thisPtr, Ark_Boolean value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getNavDestinationModifier()->setHideTitleBar(self, value);
}
KOALA_INTEROP_DIRECT_V2(NavDestinationAttribute_setHideTitleBar, Ark_NativePointer, Ark_Boolean)
void impl_NavDestinationAttribute_setOnShown(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_VOID))))};;
        GetNodeModifiers()->getNavDestinationModifier()->setOnShown(self, static_cast<Callback_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavDestinationAttribute_setOnShown, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavDestinationAttribute_setOnHidden(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_VOID))))};;
        GetNodeModifiers()->getNavDestinationModifier()->setOnHidden(self, static_cast<Callback_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavDestinationAttribute_setOnHidden, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavDestinationAttribute_setOnBackPressed(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Boolean callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Callback_Boolean_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_BOOLEAN)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Callback_Boolean_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_BOOLEAN))))};;
        GetNodeModifiers()->getNavDestinationModifier()->setOnBackPressed(self, static_cast<Callback_Boolean*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavDestinationAttribute_setOnBackPressed, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavDestinationAttribute_setMode(Ark_NativePointer thisPtr, Ark_Int32 value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getNavDestinationModifier()->setMode(self, static_cast<Ark_NavDestinationMode>(value));
}
KOALA_INTEROP_DIRECT_V2(NavDestinationAttribute_setMode, Ark_NativePointer, Ark_Int32)
void impl_NavDestinationAttribute_setBackButtonIcon(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_ResourceStr_image_PixelMap_SymbolGlyphModifier valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            const Ark_Int8 valueValueTempTmpBufBufUUnionSelector = thisDeserializer.readInt8();
            Ark_ResourceStr valueValueTempTmpBufBufU = {};
            valueValueTempTmpBufBufU.selector = valueValueTempTmpBufBufUUnionSelector;
            if (valueValueTempTmpBufBufUUnionSelector == 0) {
                valueValueTempTmpBufBufU.selector = 0;
                valueValueTempTmpBufBufU.value0 = static_cast<Ark_String>(thisDeserializer.readString());
            } else if (valueValueTempTmpBufBufUUnionSelector == 1) {
                valueValueTempTmpBufBufU.selector = 1;
                valueValueTempTmpBufBufU.value1 = Resource_serializer::read(thisDeserializer);
            } else {
                INTEROP_FATAL("One of the branches for valueValueTempTmpBufBufU has to be chosen through deserialisation.");
            }
            valueValueTempTmpBuf.value0 = static_cast<Ark_ResourceStr>(valueValueTempTmpBufBufU);
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = static_cast<Ark_image_PixelMap>(image_PixelMap_serializer::read(thisDeserializer));
        } else if (valueValueTempTmpBufUnionSelector == 2) {
            valueValueTempTmpBuf.selector = 2;
            valueValueTempTmpBuf.value2 = static_cast<Ark_SymbolGlyphModifier>(SymbolGlyphModifier_serializer::read(thisDeserializer));
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_ResourceStr_image_PixelMap_SymbolGlyphModifier valueValueTemp = static_cast<Ark_Union_ResourceStr_image_PixelMap_SymbolGlyphModifier>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getNavDestinationModifier()->setBackButtonIcon(self, static_cast<Ark_Union_ResourceStr_image_PixelMap_SymbolGlyphModifier*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavDestinationAttribute_setBackButtonIcon, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavDestinationAttribute_setMenus(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_Array_NavigationMenuItem_CustomBuilder valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            const Ark_Int32 valueValueTempTmpBufBufULength = thisDeserializer.readInt32();
            Array_NavigationMenuItem valueValueTempTmpBufBufU = {};
            thisDeserializer.resizeArray<std::decay<decltype(valueValueTempTmpBufBufU)>::type,
        std::decay<decltype(*valueValueTempTmpBufBufU.array)>::type>(&valueValueTempTmpBufBufU, valueValueTempTmpBufBufULength);
            for (int valueValueTempTmpBufBufUBufCounterI = 0; valueValueTempTmpBufBufUBufCounterI < valueValueTempTmpBufBufULength; valueValueTempTmpBufBufUBufCounterI++) {
                valueValueTempTmpBufBufU.array[valueValueTempTmpBufBufUBufCounterI] = NavigationMenuItem_serializer::read(thisDeserializer);
            }
            valueValueTempTmpBuf.value0 = valueValueTempTmpBufBufU;
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CUSTOMBUILDER)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CUSTOMBUILDER))))};
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_Array_NavigationMenuItem_CustomBuilder valueValueTemp = static_cast<Ark_Union_Array_NavigationMenuItem_CustomBuilder>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getNavDestinationModifier()->setMenus(self, static_cast<Ark_Union_Array_NavigationMenuItem_CustomBuilder*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavDestinationAttribute_setMenus, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavDestinationAttribute_setOnReady(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_NavDestinationContext_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NavDestinationContext data)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_NAVDESTINATIONCONTEXT_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NavDestinationContext data)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_NAVDESTINATIONCONTEXT_VOID))))};;
        GetNodeModifiers()->getNavDestinationModifier()->setOnReady(self, static_cast<Callback_NavDestinationContext_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavDestinationAttribute_setOnReady, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavDestinationAttribute_setOnWillAppear(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Void_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_VOID_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_VOID_VOID))))};;
        GetNodeModifiers()->getNavDestinationModifier()->setOnWillAppear(self, static_cast<Callback_Void_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavDestinationAttribute_setOnWillAppear, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavDestinationAttribute_setOnWillDisappear(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Void_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_VOID_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_VOID_VOID))))};;
        GetNodeModifiers()->getNavDestinationModifier()->setOnWillDisappear(self, static_cast<Callback_Void_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavDestinationAttribute_setOnWillDisappear, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavDestinationAttribute_setOnWillShow(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Void_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_VOID_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_VOID_VOID))))};;
        GetNodeModifiers()->getNavDestinationModifier()->setOnWillShow(self, static_cast<Callback_Void_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavDestinationAttribute_setOnWillShow, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavDestinationAttribute_setOnWillHide(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Void_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_VOID_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_VOID_VOID))))};;
        GetNodeModifiers()->getNavDestinationModifier()->setOnWillHide(self, static_cast<Callback_Void_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavDestinationAttribute_setOnWillHide, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavDestinationAttribute_setIgnoreLayoutSafeArea(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto typesValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Array_LayoutSafeAreaType typesValueTempTmpBuf = {};
        typesValueTempTmpBuf.tag = typesValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((typesValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            const Ark_Int32 typesValueTempTmpBufOptLength = thisDeserializer.readInt32();
            Array_LayoutSafeAreaType typesValueTempTmpBufOpt = {};
            thisDeserializer.resizeArray<std::decay<decltype(typesValueTempTmpBufOpt)>::type,
        std::decay<decltype(*typesValueTempTmpBufOpt.array)>::type>(&typesValueTempTmpBufOpt, typesValueTempTmpBufOptLength);
            for (int typesValueTempTmpBufOptBufCounterI = 0; typesValueTempTmpBufOptBufCounterI < typesValueTempTmpBufOptLength; typesValueTempTmpBufOptBufCounterI++) {
                typesValueTempTmpBufOpt.array[typesValueTempTmpBufOptBufCounterI] = static_cast<Ark_LayoutSafeAreaType>(thisDeserializer.readInt32());
            }
            typesValueTempTmpBuf.value = typesValueTempTmpBufOpt;
        }
        Opt_Array_LayoutSafeAreaType typesValueTemp = typesValueTempTmpBuf;;
        const auto edgesValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Array_LayoutSafeAreaEdge edgesValueTempTmpBuf = {};
        edgesValueTempTmpBuf.tag = edgesValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((edgesValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            const Ark_Int32 edgesValueTempTmpBufOptLength = thisDeserializer.readInt32();
            Array_LayoutSafeAreaEdge edgesValueTempTmpBufOpt = {};
            thisDeserializer.resizeArray<std::decay<decltype(edgesValueTempTmpBufOpt)>::type,
        std::decay<decltype(*edgesValueTempTmpBufOpt.array)>::type>(&edgesValueTempTmpBufOpt, edgesValueTempTmpBufOptLength);
            for (int edgesValueTempTmpBufOptBufCounterI = 0; edgesValueTempTmpBufOptBufCounterI < edgesValueTempTmpBufOptLength; edgesValueTempTmpBufOptBufCounterI++) {
                edgesValueTempTmpBufOpt.array[edgesValueTempTmpBufOptBufCounterI] = static_cast<Ark_LayoutSafeAreaEdge>(thisDeserializer.readInt32());
            }
            edgesValueTempTmpBuf.value = edgesValueTempTmpBufOpt;
        }
        Opt_Array_LayoutSafeAreaEdge edgesValueTemp = edgesValueTempTmpBuf;;
        GetNodeModifiers()->getNavDestinationModifier()->setIgnoreLayoutSafeArea(self, static_cast<Opt_Array_LayoutSafeAreaType*>(&typesValueTemp), static_cast<Opt_Array_LayoutSafeAreaEdge*>(&edgesValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavDestinationAttribute_setIgnoreLayoutSafeArea, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_Navigation_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getNavigationModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(Navigation_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_NavigationInterface_setNavigationOptions(Ark_NativePointer thisPtr, Ark_NativePointer pathInfos) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getNavigationModifier()->setNavigationOptions(self, static_cast<Ark_NavPathStack>(pathInfos));
}
KOALA_INTEROP_DIRECT_V2(NavigationInterface_setNavigationOptions, Ark_NativePointer, Ark_NativePointer)
void impl_NavigationAttribute_setNavBarWidth(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Length valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            valueValueTempTmpBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valueValueTempTmpBufUnionSelector == 2) {
            valueValueTempTmpBuf.selector = 2;
            valueValueTempTmpBuf.value2 = Resource_serializer::read(thisDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Length valueValueTemp = static_cast<Ark_Length>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getNavigationModifier()->setNavBarWidth(self, static_cast<Ark_Length*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavigationAttribute_setNavBarWidth, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavigationAttribute_setNavBarPosition(Ark_NativePointer thisPtr, Ark_Int32 value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getNavigationModifier()->setNavBarPosition(self, static_cast<Ark_NavBarPosition>(value));
}
KOALA_INTEROP_DIRECT_V2(NavigationAttribute_setNavBarPosition, Ark_NativePointer, Ark_Int32)
void impl_NavigationAttribute_setNavBarWidthRange(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Tuple_Dimension_Dimension valueValueTempTmpBuf = {};
        const Ark_Int8 valueValueTempTmpBufValue0TempBufUnionSelector = thisDeserializer.readInt8();
        Ark_Dimension valueValueTempTmpBufValue0TempBuf = {};
        valueValueTempTmpBufValue0TempBuf.selector = valueValueTempTmpBufValue0TempBufUnionSelector;
        if (valueValueTempTmpBufValue0TempBufUnionSelector == 0) {
            valueValueTempTmpBufValue0TempBuf.selector = 0;
            valueValueTempTmpBufValue0TempBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (valueValueTempTmpBufValue0TempBufUnionSelector == 1) {
            valueValueTempTmpBufValue0TempBuf.selector = 1;
            valueValueTempTmpBufValue0TempBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valueValueTempTmpBufValue0TempBufUnionSelector == 2) {
            valueValueTempTmpBufValue0TempBuf.selector = 2;
            valueValueTempTmpBufValue0TempBuf.value2 = Resource_serializer::read(thisDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBufValue0TempBuf has to be chosen through deserialisation.");
        }
        valueValueTempTmpBuf.value0 = static_cast<Ark_Dimension>(valueValueTempTmpBufValue0TempBuf);
        const Ark_Int8 valueValueTempTmpBufValue1TempBufUnionSelector = thisDeserializer.readInt8();
        Ark_Dimension valueValueTempTmpBufValue1TempBuf = {};
        valueValueTempTmpBufValue1TempBuf.selector = valueValueTempTmpBufValue1TempBufUnionSelector;
        if (valueValueTempTmpBufValue1TempBufUnionSelector == 0) {
            valueValueTempTmpBufValue1TempBuf.selector = 0;
            valueValueTempTmpBufValue1TempBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (valueValueTempTmpBufValue1TempBufUnionSelector == 1) {
            valueValueTempTmpBufValue1TempBuf.selector = 1;
            valueValueTempTmpBufValue1TempBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valueValueTempTmpBufValue1TempBufUnionSelector == 2) {
            valueValueTempTmpBufValue1TempBuf.selector = 2;
            valueValueTempTmpBufValue1TempBuf.value2 = Resource_serializer::read(thisDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBufValue1TempBuf has to be chosen through deserialisation.");
        }
        valueValueTempTmpBuf.value1 = static_cast<Ark_Dimension>(valueValueTempTmpBufValue1TempBuf);
        Ark_Tuple_Dimension_Dimension valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getNavigationModifier()->setNavBarWidthRange(self, static_cast<Ark_Tuple_Dimension_Dimension*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavigationAttribute_setNavBarWidthRange, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavigationAttribute_setMinContentWidth(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Dimension valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            valueValueTempTmpBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valueValueTempTmpBufUnionSelector == 2) {
            valueValueTempTmpBuf.selector = 2;
            valueValueTempTmpBuf.value2 = Resource_serializer::read(thisDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Dimension valueValueTemp = static_cast<Ark_Dimension>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getNavigationModifier()->setMinContentWidth(self, static_cast<Ark_Dimension*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavigationAttribute_setMinContentWidth, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavigationAttribute_setMode(Ark_NativePointer thisPtr, Ark_Int32 value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getNavigationModifier()->setMode(self, static_cast<Ark_NavigationMode>(value));
}
KOALA_INTEROP_DIRECT_V2(NavigationAttribute_setMode, Ark_NativePointer, Ark_Int32)
void impl_NavigationAttribute_setBackButtonIcon(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_String_image_PixelMap_Resource_SymbolGlyphModifier valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            valueValueTempTmpBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = static_cast<Ark_image_PixelMap>(image_PixelMap_serializer::read(thisDeserializer));
        } else if (valueValueTempTmpBufUnionSelector == 2) {
            valueValueTempTmpBuf.selector = 2;
            valueValueTempTmpBuf.value2 = Resource_serializer::read(thisDeserializer);
        } else if (valueValueTempTmpBufUnionSelector == 3) {
            valueValueTempTmpBuf.selector = 3;
            valueValueTempTmpBuf.value3 = static_cast<Ark_SymbolGlyphModifier>(SymbolGlyphModifier_serializer::read(thisDeserializer));
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_String_image_PixelMap_Resource_SymbolGlyphModifier valueValueTemp = static_cast<Ark_Union_String_image_PixelMap_Resource_SymbolGlyphModifier>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getNavigationModifier()->setBackButtonIcon(self, static_cast<Ark_Union_String_image_PixelMap_Resource_SymbolGlyphModifier*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavigationAttribute_setBackButtonIcon, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavigationAttribute_setHideNavBar(Ark_NativePointer thisPtr, Ark_Boolean value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getNavigationModifier()->setHideNavBar(self, value);
}
KOALA_INTEROP_DIRECT_V2(NavigationAttribute_setHideNavBar, Ark_NativePointer, Ark_Boolean)
void impl_NavigationAttribute_setTitle(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_ResourceStr_CustomBuilder_NavigationCommonTitle_NavigationCustomTitle valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            const Ark_Int8 valueValueTempTmpBufBufUUnionSelector = thisDeserializer.readInt8();
            Ark_ResourceStr valueValueTempTmpBufBufU = {};
            valueValueTempTmpBufBufU.selector = valueValueTempTmpBufBufUUnionSelector;
            if (valueValueTempTmpBufBufUUnionSelector == 0) {
                valueValueTempTmpBufBufU.selector = 0;
                valueValueTempTmpBufBufU.value0 = static_cast<Ark_String>(thisDeserializer.readString());
            } else if (valueValueTempTmpBufBufUUnionSelector == 1) {
                valueValueTempTmpBufBufU.selector = 1;
                valueValueTempTmpBufBufU.value1 = Resource_serializer::read(thisDeserializer);
            } else {
                INTEROP_FATAL("One of the branches for valueValueTempTmpBufBufU has to be chosen through deserialisation.");
            }
            valueValueTempTmpBuf.value0 = static_cast<Ark_ResourceStr>(valueValueTempTmpBufBufU);
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CUSTOMBUILDER)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CUSTOMBUILDER))))};
        } else if (valueValueTempTmpBufUnionSelector == 2) {
            valueValueTempTmpBuf.selector = 2;
            valueValueTempTmpBuf.value2 = NavigationCommonTitle_serializer::read(thisDeserializer);
        } else if (valueValueTempTmpBufUnionSelector == 3) {
            valueValueTempTmpBuf.selector = 3;
            valueValueTempTmpBuf.value3 = NavigationCustomTitle_serializer::read(thisDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_ResourceStr_CustomBuilder_NavigationCommonTitle_NavigationCustomTitle valueValueTemp = static_cast<Ark_Union_ResourceStr_CustomBuilder_NavigationCommonTitle_NavigationCustomTitle>(valueValueTempTmpBuf);;
        const auto optionsValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_NavigationTitleOptions optionsValueTempTmpBuf = {};
        optionsValueTempTmpBuf.tag = optionsValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((optionsValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            optionsValueTempTmpBuf.value = NavigationTitleOptions_serializer::read(thisDeserializer);
        }
        Opt_NavigationTitleOptions optionsValueTemp = optionsValueTempTmpBuf;;
        GetNodeModifiers()->getNavigationModifier()->setTitle(self, static_cast<Ark_Union_ResourceStr_CustomBuilder_NavigationCommonTitle_NavigationCustomTitle*>(&valueValueTemp), static_cast<Opt_NavigationTitleOptions*>(&optionsValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavigationAttribute_setTitle, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavigationAttribute_setSubTitle(Ark_NativePointer thisPtr, const KStringPtr& value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getNavigationModifier()->setSubTitle(self, (const Ark_String*) (&value));
}
KOALA_INTEROP_V2(NavigationAttribute_setSubTitle, Ark_NativePointer, KStringPtr)
void impl_NavigationAttribute_setHideTitleBar(Ark_NativePointer thisPtr, Ark_Boolean value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getNavigationModifier()->setHideTitleBar(self, value);
}
KOALA_INTEROP_DIRECT_V2(NavigationAttribute_setHideTitleBar, Ark_NativePointer, Ark_Boolean)
void impl_NavigationAttribute_setHideBackButton(Ark_NativePointer thisPtr, Ark_Boolean value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getNavigationModifier()->setHideBackButton(self, value);
}
KOALA_INTEROP_DIRECT_V2(NavigationAttribute_setHideBackButton, Ark_NativePointer, Ark_Boolean)
void impl_NavigationAttribute_setTitleMode(Ark_NativePointer thisPtr, Ark_Int32 value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getNavigationModifier()->setTitleMode(self, static_cast<Ark_NavigationTitleMode>(value));
}
KOALA_INTEROP_DIRECT_V2(NavigationAttribute_setTitleMode, Ark_NativePointer, Ark_Int32)
void impl_NavigationAttribute_setMenus(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_Array_NavigationMenuItem_CustomBuilder valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            const Ark_Int32 valueValueTempTmpBufBufULength = thisDeserializer.readInt32();
            Array_NavigationMenuItem valueValueTempTmpBufBufU = {};
            thisDeserializer.resizeArray<std::decay<decltype(valueValueTempTmpBufBufU)>::type,
        std::decay<decltype(*valueValueTempTmpBufBufU.array)>::type>(&valueValueTempTmpBufBufU, valueValueTempTmpBufBufULength);
            for (int valueValueTempTmpBufBufUBufCounterI = 0; valueValueTempTmpBufBufUBufCounterI < valueValueTempTmpBufBufULength; valueValueTempTmpBufBufUBufCounterI++) {
                valueValueTempTmpBufBufU.array[valueValueTempTmpBufBufUBufCounterI] = NavigationMenuItem_serializer::read(thisDeserializer);
            }
            valueValueTempTmpBuf.value0 = valueValueTempTmpBufBufU;
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CUSTOMBUILDER)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CUSTOMBUILDER))))};
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_Array_NavigationMenuItem_CustomBuilder valueValueTemp = static_cast<Ark_Union_Array_NavigationMenuItem_CustomBuilder>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getNavigationModifier()->setMenus(self, static_cast<Ark_Union_Array_NavigationMenuItem_CustomBuilder*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavigationAttribute_setMenus, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavigationAttribute_setToolBar(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        CustomBuilder valueValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CUSTOMBUILDER)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CUSTOMBUILDER))))};;
        GetNodeModifiers()->getNavigationModifier()->setToolBar(self, static_cast<CustomBuilder*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavigationAttribute_setToolBar, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavigationAttribute_setToolbarConfiguration(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_Array_ToolbarItem_CustomBuilder valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            const Ark_Int32 valueValueTempTmpBufBufULength = thisDeserializer.readInt32();
            Array_ToolbarItem valueValueTempTmpBufBufU = {};
            thisDeserializer.resizeArray<std::decay<decltype(valueValueTempTmpBufBufU)>::type,
        std::decay<decltype(*valueValueTempTmpBufBufU.array)>::type>(&valueValueTempTmpBufBufU, valueValueTempTmpBufBufULength);
            for (int valueValueTempTmpBufBufUBufCounterI = 0; valueValueTempTmpBufBufUBufCounterI < valueValueTempTmpBufBufULength; valueValueTempTmpBufBufUBufCounterI++) {
                valueValueTempTmpBufBufU.array[valueValueTempTmpBufBufUBufCounterI] = ToolbarItem_serializer::read(thisDeserializer);
            }
            valueValueTempTmpBuf.value0 = valueValueTempTmpBufBufU;
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CUSTOMBUILDER)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CUSTOMBUILDER))))};
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_Array_ToolbarItem_CustomBuilder valueValueTemp = static_cast<Ark_Union_Array_ToolbarItem_CustomBuilder>(valueValueTempTmpBuf);;
        const auto optionsValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_NavigationToolbarOptions optionsValueTempTmpBuf = {};
        optionsValueTempTmpBuf.tag = optionsValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((optionsValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            optionsValueTempTmpBuf.value = NavigationToolbarOptions_serializer::read(thisDeserializer);
        }
        Opt_NavigationToolbarOptions optionsValueTemp = optionsValueTempTmpBuf;;
        GetNodeModifiers()->getNavigationModifier()->setToolbarConfiguration(self, static_cast<Ark_Union_Array_ToolbarItem_CustomBuilder*>(&valueValueTemp), static_cast<Opt_NavigationToolbarOptions*>(&optionsValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavigationAttribute_setToolbarConfiguration, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavigationAttribute_setHideToolBar(Ark_NativePointer thisPtr, Ark_Boolean value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getNavigationModifier()->setHideToolBar(self, value);
}
KOALA_INTEROP_DIRECT_V2(NavigationAttribute_setHideToolBar, Ark_NativePointer, Ark_Boolean)
void impl_NavigationAttribute_setOnTitleModeChange(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_NavigationTitleMode_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, Ark_NavigationTitleMode titleMode)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_NAVIGATIONTITLEMODE_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, Ark_NavigationTitleMode titleMode)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_NAVIGATIONTITLEMODE_VOID))))};;
        GetNodeModifiers()->getNavigationModifier()->setOnTitleModeChange(self, static_cast<Callback_NavigationTitleMode_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavigationAttribute_setOnTitleModeChange, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavigationAttribute_setOnNavBarStateChange(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Boolean_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Boolean isVisible)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_BOOLEAN_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Boolean isVisible)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_BOOLEAN_VOID))))};;
        GetNodeModifiers()->getNavigationModifier()->setOnNavBarStateChange(self, static_cast<Callback_Boolean_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavigationAttribute_setOnNavBarStateChange, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavigationAttribute_setOnNavigationModeChange(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_NavigationMode_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, Ark_NavigationMode mode)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_NAVIGATIONMODE_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, Ark_NavigationMode mode)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_NAVIGATIONMODE_VOID))))};;
        GetNodeModifiers()->getNavigationModifier()->setOnNavigationModeChange(self, static_cast<Callback_NavigationMode_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavigationAttribute_setOnNavigationModeChange, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavigationAttribute_setNavDestination(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_String_Unknown_Void builderValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_String name, const Ark_Object param)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_STRING_UNKNOWN_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_String name, const Ark_Object param)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_STRING_UNKNOWN_VOID))))};;
        GetNodeModifiers()->getNavigationModifier()->setNavDestination(self, static_cast<Callback_String_Unknown_Void*>(&builderValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavigationAttribute_setNavDestination, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavigationAttribute_setCustomNavContentTransition(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Type_NavigationAttribute_customNavContentTransition_delegate delegateValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NavContentInfo from, const Ark_NavContentInfo to, Ark_NavigationOperation operation, const Callback_Opt_NavigationAnimatedTransition_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_TYPE_NAVIGATIONATTRIBUTE_CUSTOMNAVCONTENTTRANSITION_DELEGATE)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NavContentInfo from, const Ark_NavContentInfo to, Ark_NavigationOperation operation, const Callback_Opt_NavigationAnimatedTransition_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_TYPE_NAVIGATIONATTRIBUTE_CUSTOMNAVCONTENTTRANSITION_DELEGATE))))};;
        GetNodeModifiers()->getNavigationModifier()->setCustomNavContentTransition(self, static_cast<Type_NavigationAttribute_customNavContentTransition_delegate*>(&delegateValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavigationAttribute_setCustomNavContentTransition, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavigationAttribute_setIgnoreLayoutSafeArea(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto typesValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Array_LayoutSafeAreaType typesValueTempTmpBuf = {};
        typesValueTempTmpBuf.tag = typesValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((typesValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            const Ark_Int32 typesValueTempTmpBufOptLength = thisDeserializer.readInt32();
            Array_LayoutSafeAreaType typesValueTempTmpBufOpt = {};
            thisDeserializer.resizeArray<std::decay<decltype(typesValueTempTmpBufOpt)>::type,
        std::decay<decltype(*typesValueTempTmpBufOpt.array)>::type>(&typesValueTempTmpBufOpt, typesValueTempTmpBufOptLength);
            for (int typesValueTempTmpBufOptBufCounterI = 0; typesValueTempTmpBufOptBufCounterI < typesValueTempTmpBufOptLength; typesValueTempTmpBufOptBufCounterI++) {
                typesValueTempTmpBufOpt.array[typesValueTempTmpBufOptBufCounterI] = static_cast<Ark_LayoutSafeAreaType>(thisDeserializer.readInt32());
            }
            typesValueTempTmpBuf.value = typesValueTempTmpBufOpt;
        }
        Opt_Array_LayoutSafeAreaType typesValueTemp = typesValueTempTmpBuf;;
        const auto edgesValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Array_LayoutSafeAreaEdge edgesValueTempTmpBuf = {};
        edgesValueTempTmpBuf.tag = edgesValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((edgesValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            const Ark_Int32 edgesValueTempTmpBufOptLength = thisDeserializer.readInt32();
            Array_LayoutSafeAreaEdge edgesValueTempTmpBufOpt = {};
            thisDeserializer.resizeArray<std::decay<decltype(edgesValueTempTmpBufOpt)>::type,
        std::decay<decltype(*edgesValueTempTmpBufOpt.array)>::type>(&edgesValueTempTmpBufOpt, edgesValueTempTmpBufOptLength);
            for (int edgesValueTempTmpBufOptBufCounterI = 0; edgesValueTempTmpBufOptBufCounterI < edgesValueTempTmpBufOptLength; edgesValueTempTmpBufOptBufCounterI++) {
                edgesValueTempTmpBufOpt.array[edgesValueTempTmpBufOptBufCounterI] = static_cast<Ark_LayoutSafeAreaEdge>(thisDeserializer.readInt32());
            }
            edgesValueTempTmpBuf.value = edgesValueTempTmpBufOpt;
        }
        Opt_Array_LayoutSafeAreaEdge edgesValueTemp = edgesValueTempTmpBuf;;
        GetNodeModifiers()->getNavigationModifier()->setIgnoreLayoutSafeArea(self, static_cast<Opt_Array_LayoutSafeAreaType*>(&typesValueTemp), static_cast<Opt_Array_LayoutSafeAreaEdge*>(&edgesValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavigationAttribute_setIgnoreLayoutSafeArea, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavigationAttribute_setSystemBarStyle(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto styleValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_window_SystemBarStyle styleValueTempTmpBuf = {};
        styleValueTempTmpBuf.tag = styleValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((styleValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            styleValueTempTmpBuf.value = static_cast<Ark_window_SystemBarStyle>(window_SystemBarStyle_serializer::read(thisDeserializer));
        }
        Opt_window_SystemBarStyle styleValueTemp = styleValueTempTmpBuf;;
        GetNodeModifiers()->getNavigationModifier()->setSystemBarStyle(self, static_cast<Opt_window_SystemBarStyle*>(&styleValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavigationAttribute_setSystemBarStyle, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_Rect_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getRectModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(Rect_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_RectInterface_setRectOptions(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Union_Type_RectInterface_callable0_value_u0_Type_RectInterface_callable0_value_u1 valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            const Ark_Int8 valueValueTempTmpBufOptUnionSelector = thisDeserializer.readInt8();
            Ark_Union_Type_RectInterface_callable0_value_u0_Type_RectInterface_callable0_value_u1 valueValueTempTmpBufOpt = {};
            valueValueTempTmpBufOpt.selector = valueValueTempTmpBufOptUnionSelector;
            if (valueValueTempTmpBufOptUnionSelector == 0) {
                valueValueTempTmpBufOpt.selector = 0;
                Ark_Type_RectInterface_callable0_value_u0 valueValueTempTmpBufOptBufU = {};
                const auto valueValueTempTmpBufOptBufUWidthTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
                Opt_Union_Number_String valueValueTempTmpBufOptBufUWidthTempBuf = {};
                valueValueTempTmpBufOptBufUWidthTempBuf.tag = valueValueTempTmpBufOptBufUWidthTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
                if ((valueValueTempTmpBufOptBufUWidthTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                    const Ark_Int8 valueValueTempTmpBufOptBufUWidthTempBufOptUnionSelector = thisDeserializer.readInt8();
                    Ark_Union_Number_String valueValueTempTmpBufOptBufUWidthTempBufOpt = {};
                    valueValueTempTmpBufOptBufUWidthTempBufOpt.selector = valueValueTempTmpBufOptBufUWidthTempBufOptUnionSelector;
                    if (valueValueTempTmpBufOptBufUWidthTempBufOptUnionSelector == 0) {
                        valueValueTempTmpBufOptBufUWidthTempBufOpt.selector = 0;
                        valueValueTempTmpBufOptBufUWidthTempBufOpt.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                    } else if (valueValueTempTmpBufOptBufUWidthTempBufOptUnionSelector == 1) {
                        valueValueTempTmpBufOptBufUWidthTempBufOpt.selector = 1;
                        valueValueTempTmpBufOptBufUWidthTempBufOpt.value1 = static_cast<Ark_String>(thisDeserializer.readString());
                    } else {
                        INTEROP_FATAL("One of the branches for valueValueTempTmpBufOptBufUWidthTempBufOpt has to be chosen through deserialisation.");
                    }
                    valueValueTempTmpBufOptBufUWidthTempBuf.value = static_cast<Ark_Union_Number_String>(valueValueTempTmpBufOptBufUWidthTempBufOpt);
                }
                valueValueTempTmpBufOptBufU.width = valueValueTempTmpBufOptBufUWidthTempBuf;
                const auto valueValueTempTmpBufOptBufUHeightTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
                Opt_Union_Number_String valueValueTempTmpBufOptBufUHeightTempBuf = {};
                valueValueTempTmpBufOptBufUHeightTempBuf.tag = valueValueTempTmpBufOptBufUHeightTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
                if ((valueValueTempTmpBufOptBufUHeightTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                    const Ark_Int8 valueValueTempTmpBufOptBufUHeightTempBufOptUnionSelector = thisDeserializer.readInt8();
                    Ark_Union_Number_String valueValueTempTmpBufOptBufUHeightTempBufOpt = {};
                    valueValueTempTmpBufOptBufUHeightTempBufOpt.selector = valueValueTempTmpBufOptBufUHeightTempBufOptUnionSelector;
                    if (valueValueTempTmpBufOptBufUHeightTempBufOptUnionSelector == 0) {
                        valueValueTempTmpBufOptBufUHeightTempBufOpt.selector = 0;
                        valueValueTempTmpBufOptBufUHeightTempBufOpt.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                    } else if (valueValueTempTmpBufOptBufUHeightTempBufOptUnionSelector == 1) {
                        valueValueTempTmpBufOptBufUHeightTempBufOpt.selector = 1;
                        valueValueTempTmpBufOptBufUHeightTempBufOpt.value1 = static_cast<Ark_String>(thisDeserializer.readString());
                    } else {
                        INTEROP_FATAL("One of the branches for valueValueTempTmpBufOptBufUHeightTempBufOpt has to be chosen through deserialisation.");
                    }
                    valueValueTempTmpBufOptBufUHeightTempBuf.value = static_cast<Ark_Union_Number_String>(valueValueTempTmpBufOptBufUHeightTempBufOpt);
                }
                valueValueTempTmpBufOptBufU.height = valueValueTempTmpBufOptBufUHeightTempBuf;
                const auto valueValueTempTmpBufOptBufURadiusTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
                Opt_Union_Number_String_Array_Object valueValueTempTmpBufOptBufURadiusTempBuf = {};
                valueValueTempTmpBufOptBufURadiusTempBuf.tag = valueValueTempTmpBufOptBufURadiusTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
                if ((valueValueTempTmpBufOptBufURadiusTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                    const Ark_Int8 valueValueTempTmpBufOptBufURadiusTempBufOptUnionSelector = thisDeserializer.readInt8();
                    Ark_Union_Number_String_Array_Object valueValueTempTmpBufOptBufURadiusTempBufOpt = {};
                    valueValueTempTmpBufOptBufURadiusTempBufOpt.selector = valueValueTempTmpBufOptBufURadiusTempBufOptUnionSelector;
                    if (valueValueTempTmpBufOptBufURadiusTempBufOptUnionSelector == 0) {
                        valueValueTempTmpBufOptBufURadiusTempBufOpt.selector = 0;
                        valueValueTempTmpBufOptBufURadiusTempBufOpt.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                    } else if (valueValueTempTmpBufOptBufURadiusTempBufOptUnionSelector == 1) {
                        valueValueTempTmpBufOptBufURadiusTempBufOpt.selector = 1;
                        valueValueTempTmpBufOptBufURadiusTempBufOpt.value1 = static_cast<Ark_String>(thisDeserializer.readString());
                    } else if (valueValueTempTmpBufOptBufURadiusTempBufOptUnionSelector == 2) {
                        valueValueTempTmpBufOptBufURadiusTempBufOpt.selector = 2;
                        const Ark_Int32 valueValueTempTmpBufOptBufURadiusTempBufOptBufULength = thisDeserializer.readInt32();
                        Array_Object valueValueTempTmpBufOptBufURadiusTempBufOptBufU = {};
                        thisDeserializer.resizeArray<std::decay<decltype(valueValueTempTmpBufOptBufURadiusTempBufOptBufU)>::type,
        std::decay<decltype(*valueValueTempTmpBufOptBufURadiusTempBufOptBufU.array)>::type>(&valueValueTempTmpBufOptBufURadiusTempBufOptBufU, valueValueTempTmpBufOptBufURadiusTempBufOptBufULength);
                        for (int valueValueTempTmpBufOptBufURadiusTempBufOptBufUBufCounterI = 0; valueValueTempTmpBufOptBufURadiusTempBufOptBufUBufCounterI < valueValueTempTmpBufOptBufURadiusTempBufOptBufULength; valueValueTempTmpBufOptBufURadiusTempBufOptBufUBufCounterI++) {
                            valueValueTempTmpBufOptBufURadiusTempBufOptBufU.array[valueValueTempTmpBufOptBufURadiusTempBufOptBufUBufCounterI] = static_cast<Ark_Object>(thisDeserializer.readObject());
                        }
                        valueValueTempTmpBufOptBufURadiusTempBufOpt.value2 = valueValueTempTmpBufOptBufURadiusTempBufOptBufU;
                    } else {
                        INTEROP_FATAL("One of the branches for valueValueTempTmpBufOptBufURadiusTempBufOpt has to be chosen through deserialisation.");
                    }
                    valueValueTempTmpBufOptBufURadiusTempBuf.value = static_cast<Ark_Union_Number_String_Array_Object>(valueValueTempTmpBufOptBufURadiusTempBufOpt);
                }
                valueValueTempTmpBufOptBufU.radius = valueValueTempTmpBufOptBufURadiusTempBuf;
                valueValueTempTmpBufOpt.value0 = valueValueTempTmpBufOptBufU;
            } else if (valueValueTempTmpBufOptUnionSelector == 1) {
                valueValueTempTmpBufOpt.selector = 1;
                Ark_Type_RectInterface_callable0_value_u1 valueValueTempTmpBufOptBufU = {};
                const auto valueValueTempTmpBufOptBufUWidthTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
                Opt_Union_Number_String valueValueTempTmpBufOptBufUWidthTempBuf = {};
                valueValueTempTmpBufOptBufUWidthTempBuf.tag = valueValueTempTmpBufOptBufUWidthTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
                if ((valueValueTempTmpBufOptBufUWidthTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                    const Ark_Int8 valueValueTempTmpBufOptBufUWidthTempBufOptUnionSelector = thisDeserializer.readInt8();
                    Ark_Union_Number_String valueValueTempTmpBufOptBufUWidthTempBufOpt = {};
                    valueValueTempTmpBufOptBufUWidthTempBufOpt.selector = valueValueTempTmpBufOptBufUWidthTempBufOptUnionSelector;
                    if (valueValueTempTmpBufOptBufUWidthTempBufOptUnionSelector == 0) {
                        valueValueTempTmpBufOptBufUWidthTempBufOpt.selector = 0;
                        valueValueTempTmpBufOptBufUWidthTempBufOpt.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                    } else if (valueValueTempTmpBufOptBufUWidthTempBufOptUnionSelector == 1) {
                        valueValueTempTmpBufOptBufUWidthTempBufOpt.selector = 1;
                        valueValueTempTmpBufOptBufUWidthTempBufOpt.value1 = static_cast<Ark_String>(thisDeserializer.readString());
                    } else {
                        INTEROP_FATAL("One of the branches for valueValueTempTmpBufOptBufUWidthTempBufOpt has to be chosen through deserialisation.");
                    }
                    valueValueTempTmpBufOptBufUWidthTempBuf.value = static_cast<Ark_Union_Number_String>(valueValueTempTmpBufOptBufUWidthTempBufOpt);
                }
                valueValueTempTmpBufOptBufU.width = valueValueTempTmpBufOptBufUWidthTempBuf;
                const auto valueValueTempTmpBufOptBufUHeightTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
                Opt_Union_Number_String valueValueTempTmpBufOptBufUHeightTempBuf = {};
                valueValueTempTmpBufOptBufUHeightTempBuf.tag = valueValueTempTmpBufOptBufUHeightTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
                if ((valueValueTempTmpBufOptBufUHeightTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                    const Ark_Int8 valueValueTempTmpBufOptBufUHeightTempBufOptUnionSelector = thisDeserializer.readInt8();
                    Ark_Union_Number_String valueValueTempTmpBufOptBufUHeightTempBufOpt = {};
                    valueValueTempTmpBufOptBufUHeightTempBufOpt.selector = valueValueTempTmpBufOptBufUHeightTempBufOptUnionSelector;
                    if (valueValueTempTmpBufOptBufUHeightTempBufOptUnionSelector == 0) {
                        valueValueTempTmpBufOptBufUHeightTempBufOpt.selector = 0;
                        valueValueTempTmpBufOptBufUHeightTempBufOpt.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                    } else if (valueValueTempTmpBufOptBufUHeightTempBufOptUnionSelector == 1) {
                        valueValueTempTmpBufOptBufUHeightTempBufOpt.selector = 1;
                        valueValueTempTmpBufOptBufUHeightTempBufOpt.value1 = static_cast<Ark_String>(thisDeserializer.readString());
                    } else {
                        INTEROP_FATAL("One of the branches for valueValueTempTmpBufOptBufUHeightTempBufOpt has to be chosen through deserialisation.");
                    }
                    valueValueTempTmpBufOptBufUHeightTempBuf.value = static_cast<Ark_Union_Number_String>(valueValueTempTmpBufOptBufUHeightTempBufOpt);
                }
                valueValueTempTmpBufOptBufU.height = valueValueTempTmpBufOptBufUHeightTempBuf;
                const auto valueValueTempTmpBufOptBufURadiusWidthTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
                Opt_Union_Number_String valueValueTempTmpBufOptBufURadiusWidthTempBuf = {};
                valueValueTempTmpBufOptBufURadiusWidthTempBuf.tag = valueValueTempTmpBufOptBufURadiusWidthTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
                if ((valueValueTempTmpBufOptBufURadiusWidthTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                    const Ark_Int8 valueValueTempTmpBufOptBufURadiusWidthTempBufOptUnionSelector = thisDeserializer.readInt8();
                    Ark_Union_Number_String valueValueTempTmpBufOptBufURadiusWidthTempBufOpt = {};
                    valueValueTempTmpBufOptBufURadiusWidthTempBufOpt.selector = valueValueTempTmpBufOptBufURadiusWidthTempBufOptUnionSelector;
                    if (valueValueTempTmpBufOptBufURadiusWidthTempBufOptUnionSelector == 0) {
                        valueValueTempTmpBufOptBufURadiusWidthTempBufOpt.selector = 0;
                        valueValueTempTmpBufOptBufURadiusWidthTempBufOpt.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                    } else if (valueValueTempTmpBufOptBufURadiusWidthTempBufOptUnionSelector == 1) {
                        valueValueTempTmpBufOptBufURadiusWidthTempBufOpt.selector = 1;
                        valueValueTempTmpBufOptBufURadiusWidthTempBufOpt.value1 = static_cast<Ark_String>(thisDeserializer.readString());
                    } else {
                        INTEROP_FATAL("One of the branches for valueValueTempTmpBufOptBufURadiusWidthTempBufOpt has to be chosen through deserialisation.");
                    }
                    valueValueTempTmpBufOptBufURadiusWidthTempBuf.value = static_cast<Ark_Union_Number_String>(valueValueTempTmpBufOptBufURadiusWidthTempBufOpt);
                }
                valueValueTempTmpBufOptBufU.radiusWidth = valueValueTempTmpBufOptBufURadiusWidthTempBuf;
                const auto valueValueTempTmpBufOptBufURadiusHeightTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
                Opt_Union_Number_String valueValueTempTmpBufOptBufURadiusHeightTempBuf = {};
                valueValueTempTmpBufOptBufURadiusHeightTempBuf.tag = valueValueTempTmpBufOptBufURadiusHeightTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
                if ((valueValueTempTmpBufOptBufURadiusHeightTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                    const Ark_Int8 valueValueTempTmpBufOptBufURadiusHeightTempBufOptUnionSelector = thisDeserializer.readInt8();
                    Ark_Union_Number_String valueValueTempTmpBufOptBufURadiusHeightTempBufOpt = {};
                    valueValueTempTmpBufOptBufURadiusHeightTempBufOpt.selector = valueValueTempTmpBufOptBufURadiusHeightTempBufOptUnionSelector;
                    if (valueValueTempTmpBufOptBufURadiusHeightTempBufOptUnionSelector == 0) {
                        valueValueTempTmpBufOptBufURadiusHeightTempBufOpt.selector = 0;
                        valueValueTempTmpBufOptBufURadiusHeightTempBufOpt.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                    } else if (valueValueTempTmpBufOptBufURadiusHeightTempBufOptUnionSelector == 1) {
                        valueValueTempTmpBufOptBufURadiusHeightTempBufOpt.selector = 1;
                        valueValueTempTmpBufOptBufURadiusHeightTempBufOpt.value1 = static_cast<Ark_String>(thisDeserializer.readString());
                    } else {
                        INTEROP_FATAL("One of the branches for valueValueTempTmpBufOptBufURadiusHeightTempBufOpt has to be chosen through deserialisation.");
                    }
                    valueValueTempTmpBufOptBufURadiusHeightTempBuf.value = static_cast<Ark_Union_Number_String>(valueValueTempTmpBufOptBufURadiusHeightTempBufOpt);
                }
                valueValueTempTmpBufOptBufU.radiusHeight = valueValueTempTmpBufOptBufURadiusHeightTempBuf;
                valueValueTempTmpBufOpt.value1 = valueValueTempTmpBufOptBufU;
            } else {
                INTEROP_FATAL("One of the branches for valueValueTempTmpBufOpt has to be chosen through deserialisation.");
            }
            valueValueTempTmpBuf.value = static_cast<Ark_Union_Type_RectInterface_callable0_value_u0_Type_RectInterface_callable0_value_u1>(valueValueTempTmpBufOpt);
        }
        Opt_Union_Type_RectInterface_callable0_value_u0_Type_RectInterface_callable0_value_u1 valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getRectModifier()->setRectOptions(self, static_cast<Opt_Union_Type_RectInterface_callable0_value_u0_Type_RectInterface_callable0_value_u1*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(RectInterface_setRectOptions, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_RectAttribute_setRadiusWidth(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_Number_String valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            valueValueTempTmpBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = static_cast<Ark_String>(thisDeserializer.readString());
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_Number_String valueValueTemp = static_cast<Ark_Union_Number_String>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getRectModifier()->setRadiusWidth(self, static_cast<Ark_Union_Number_String*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(RectAttribute_setRadiusWidth, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_RectAttribute_setRadiusHeight(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_Number_String valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            valueValueTempTmpBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = static_cast<Ark_String>(thisDeserializer.readString());
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_Number_String valueValueTemp = static_cast<Ark_Union_Number_String>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getRectModifier()->setRadiusHeight(self, static_cast<Ark_Union_Number_String*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(RectAttribute_setRadiusHeight, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_RectAttribute_setRadius(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_Number_String_Array_Union_Number_String valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            valueValueTempTmpBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (valueValueTempTmpBufUnionSelector == 2) {
            valueValueTempTmpBuf.selector = 2;
            const Ark_Int32 valueValueTempTmpBufBufULength = thisDeserializer.readInt32();
            Array_Union_Number_String valueValueTempTmpBufBufU = {};
            thisDeserializer.resizeArray<std::decay<decltype(valueValueTempTmpBufBufU)>::type,
        std::decay<decltype(*valueValueTempTmpBufBufU.array)>::type>(&valueValueTempTmpBufBufU, valueValueTempTmpBufBufULength);
            for (int valueValueTempTmpBufBufUBufCounterI = 0; valueValueTempTmpBufBufUBufCounterI < valueValueTempTmpBufBufULength; valueValueTempTmpBufBufUBufCounterI++) {
                const Ark_Int8 valueValueTempTmpBufBufUTempBufUnionSelector = thisDeserializer.readInt8();
                Ark_Union_Number_String valueValueTempTmpBufBufUTempBuf = {};
                valueValueTempTmpBufBufUTempBuf.selector = valueValueTempTmpBufBufUTempBufUnionSelector;
                if (valueValueTempTmpBufBufUTempBufUnionSelector == 0) {
                    valueValueTempTmpBufBufUTempBuf.selector = 0;
                    valueValueTempTmpBufBufUTempBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
                } else if (valueValueTempTmpBufBufUTempBufUnionSelector == 1) {
                    valueValueTempTmpBufBufUTempBuf.selector = 1;
                    valueValueTempTmpBufBufUTempBuf.value1 = static_cast<Ark_String>(thisDeserializer.readString());
                } else {
                    INTEROP_FATAL("One of the branches for valueValueTempTmpBufBufUTempBuf has to be chosen through deserialisation.");
                }
                valueValueTempTmpBufBufU.array[valueValueTempTmpBufBufUBufCounterI] = static_cast<Ark_Union_Number_String>(valueValueTempTmpBufBufUTempBuf);
            }
            valueValueTempTmpBuf.value2 = valueValueTempTmpBufBufU;
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_Number_String_Array_Union_Number_String valueValueTemp = static_cast<Ark_Union_Number_String_Array_Union_Number_String>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getRectModifier()->setRadius(self, static_cast<Ark_Union_Number_String_Array_Union_Number_String*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(RectAttribute_setRadius, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_Scroll_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getScrollModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(Scroll_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_ScrollInterface_setScrollOptions(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto scrollerValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Scroller scrollerValueTempTmpBuf = {};
        scrollerValueTempTmpBuf.tag = scrollerValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((scrollerValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            scrollerValueTempTmpBuf.value = static_cast<Ark_Scroller>(Scroller_serializer::read(thisDeserializer));
        }
        Opt_Scroller scrollerValueTemp = scrollerValueTempTmpBuf;;
        GetNodeModifiers()->getScrollModifier()->setScrollOptions(self, static_cast<Opt_Scroller*>(&scrollerValueTemp));
}
KOALA_INTEROP_DIRECT_V3(ScrollInterface_setScrollOptions, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_SecurityComponentMethod_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getSecurityComponentMethodModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(SecurityComponentMethod_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
Ark_NativePointer impl_Select_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getSelectModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(Select_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_SelectInterface_setSelectOptions(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int32 optionsValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_SelectOption optionsValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(optionsValueTempTmpBuf)>::type,
        std::decay<decltype(*optionsValueTempTmpBuf.array)>::type>(&optionsValueTempTmpBuf, optionsValueTempTmpBufLength);
        for (int optionsValueTempTmpBufBufCounterI = 0; optionsValueTempTmpBufBufCounterI < optionsValueTempTmpBufLength; optionsValueTempTmpBufBufCounterI++) {
            optionsValueTempTmpBuf.array[optionsValueTempTmpBufBufCounterI] = SelectOption_serializer::read(thisDeserializer);
        }
        Array_SelectOption optionsValueTemp = optionsValueTempTmpBuf;;
        GetNodeModifiers()->getSelectModifier()->setSelectOptions(self, static_cast<Array_SelectOption*>(&optionsValueTemp));
}
KOALA_INTEROP_DIRECT_V3(SelectInterface_setSelectOptions, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_SelectAttribute_set_onChangeEvent_selected(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Number_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Number selected)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_NUMBER_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Number selected)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_NUMBER_VOID))))};;
        GetNodeModifiers()->getSelectModifier()->set_onChangeEvent_selected(self, static_cast<Callback_Number_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(SelectAttribute_set_onChangeEvent_selected, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_SelectAttribute_set_onChangeEvent_value(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Number_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Number selected)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_NUMBER_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Number selected)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_NUMBER_VOID))))};;
        GetNodeModifiers()->getSelectModifier()->set_onChangeEvent_value(self, static_cast<Callback_Number_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(SelectAttribute_set_onChangeEvent_value, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_Shape_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getShapeModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(Shape_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_ShapeInterface_setShapeOptions(Ark_NativePointer thisPtr) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getShapeModifier()->setShapeOptions(self);
}
KOALA_INTEROP_DIRECT_V1(ShapeInterface_setShapeOptions, Ark_NativePointer)
Ark_NativePointer impl_SideBarContainer_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getSideBarContainerModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(SideBarContainer_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_SideBarContainerInterface_setSideBarContainerOptions(Ark_NativePointer thisPtr) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getSideBarContainerModifier()->setSideBarContainerOptions(self);
}
KOALA_INTEROP_DIRECT_V1(SideBarContainerInterface_setSideBarContainerOptions, Ark_NativePointer)
void impl_SideBarContainerAttribute_setMinSideBarWidth0(Ark_NativePointer thisPtr, KInteropNumber value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getSideBarContainerModifier()->setMinSideBarWidth0(self, (const Ark_Number*) (&value));
}
KOALA_INTEROP_V2(SideBarContainerAttribute_setMinSideBarWidth0, Ark_NativePointer, KInteropNumber)
void impl_SideBarContainerAttribute_setMinSideBarWidth1(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Length valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            valueValueTempTmpBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valueValueTempTmpBufUnionSelector == 2) {
            valueValueTempTmpBuf.selector = 2;
            valueValueTempTmpBuf.value2 = Resource_serializer::read(thisDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Length valueValueTemp = static_cast<Ark_Length>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getSideBarContainerModifier()->setMinSideBarWidth1(self, static_cast<Ark_Length*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(SideBarContainerAttribute_setMinSideBarWidth1, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_SideBarContainerAttribute_set_onChangeEvent_showSideBar(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Number_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Number showSideBar)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_NUMBER_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Number showSideBar)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_NUMBER_VOID))))};;
        GetNodeModifiers()->getSideBarContainerModifier()->set_onChangeEvent_showSideBar(self, static_cast<Callback_Number_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(SideBarContainerAttribute_set_onChangeEvent_showSideBar, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_Slider_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getSliderModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(Slider_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_SliderAttribute_setBlockColor(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_ResourceColor valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            valueValueTempTmpBuf.value0 = static_cast<Ark_Color>(thisDeserializer.readInt32());
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valueValueTempTmpBufUnionSelector == 2) {
            valueValueTempTmpBuf.selector = 2;
            valueValueTempTmpBuf.value2 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (valueValueTempTmpBufUnionSelector == 3) {
            valueValueTempTmpBuf.selector = 3;
            valueValueTempTmpBuf.value3 = Resource_serializer::read(thisDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_ResourceColor valueValueTemp = static_cast<Ark_ResourceColor>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getSliderModifier()->setBlockColor(self, static_cast<Ark_ResourceColor*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(SliderAttribute_setBlockColor, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_SliderAttribute_setTrackColor(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_ResourceColor_LinearGradient valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            const Ark_Int8 valueValueTempTmpBufBufUUnionSelector = thisDeserializer.readInt8();
            Ark_ResourceColor valueValueTempTmpBufBufU = {};
            valueValueTempTmpBufBufU.selector = valueValueTempTmpBufBufUUnionSelector;
            if (valueValueTempTmpBufBufUUnionSelector == 0) {
                valueValueTempTmpBufBufU.selector = 0;
                valueValueTempTmpBufBufU.value0 = static_cast<Ark_Color>(thisDeserializer.readInt32());
            } else if (valueValueTempTmpBufBufUUnionSelector == 1) {
                valueValueTempTmpBufBufU.selector = 1;
                valueValueTempTmpBufBufU.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
            } else if (valueValueTempTmpBufBufUUnionSelector == 2) {
                valueValueTempTmpBufBufU.selector = 2;
                valueValueTempTmpBufBufU.value2 = static_cast<Ark_String>(thisDeserializer.readString());
            } else if (valueValueTempTmpBufBufUUnionSelector == 3) {
                valueValueTempTmpBufBufU.selector = 3;
                valueValueTempTmpBufBufU.value3 = Resource_serializer::read(thisDeserializer);
            } else {
                INTEROP_FATAL("One of the branches for valueValueTempTmpBufBufU has to be chosen through deserialisation.");
            }
            valueValueTempTmpBuf.value0 = static_cast<Ark_ResourceColor>(valueValueTempTmpBufBufU);
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = static_cast<Ark_LinearGradient>(LinearGradient_serializer::read(thisDeserializer));
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_ResourceColor_LinearGradient valueValueTemp = static_cast<Ark_Union_ResourceColor_LinearGradient>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getSliderModifier()->setTrackColor(self, static_cast<Ark_Union_ResourceColor_LinearGradient*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(SliderAttribute_setTrackColor, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_SliderAttribute_setSelectedColor(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_ResourceColor valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            valueValueTempTmpBuf.value0 = static_cast<Ark_Color>(thisDeserializer.readInt32());
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valueValueTempTmpBufUnionSelector == 2) {
            valueValueTempTmpBuf.selector = 2;
            valueValueTempTmpBuf.value2 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (valueValueTempTmpBufUnionSelector == 3) {
            valueValueTempTmpBuf.selector = 3;
            valueValueTempTmpBuf.value3 = Resource_serializer::read(thisDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_ResourceColor valueValueTemp = static_cast<Ark_ResourceColor>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getSliderModifier()->setSelectedColor(self, static_cast<Ark_ResourceColor*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(SliderAttribute_setSelectedColor, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_SliderAttribute_setMinLabel(Ark_NativePointer thisPtr, const KStringPtr& value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getSliderModifier()->setMinLabel(self, (const Ark_String*) (&value));
}
KOALA_INTEROP_V2(SliderAttribute_setMinLabel, Ark_NativePointer, KStringPtr)
void impl_SliderAttribute_setMaxLabel(Ark_NativePointer thisPtr, const KStringPtr& value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getSliderModifier()->setMaxLabel(self, (const Ark_String*) (&value));
}
KOALA_INTEROP_V2(SliderAttribute_setMaxLabel, Ark_NativePointer, KStringPtr)
void impl_SliderAttribute_setShowSteps(Ark_NativePointer thisPtr, Ark_Boolean value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getSliderModifier()->setShowSteps(self, value);
}
KOALA_INTEROP_DIRECT_V2(SliderAttribute_setShowSteps, Ark_NativePointer, Ark_Boolean)
void impl_SliderAttribute_setShowTips(Ark_NativePointer thisPtr, Ark_Boolean value, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto contentValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_ResourceStr contentValueTempTmpBuf = {};
        contentValueTempTmpBuf.tag = contentValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((contentValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            const Ark_Int8 contentValueTempTmpBufOptUnionSelector = thisDeserializer.readInt8();
            Ark_ResourceStr contentValueTempTmpBufOpt = {};
            contentValueTempTmpBufOpt.selector = contentValueTempTmpBufOptUnionSelector;
            if (contentValueTempTmpBufOptUnionSelector == 0) {
                contentValueTempTmpBufOpt.selector = 0;
                contentValueTempTmpBufOpt.value0 = static_cast<Ark_String>(thisDeserializer.readString());
            } else if (contentValueTempTmpBufOptUnionSelector == 1) {
                contentValueTempTmpBufOpt.selector = 1;
                contentValueTempTmpBufOpt.value1 = Resource_serializer::read(thisDeserializer);
            } else {
                INTEROP_FATAL("One of the branches for contentValueTempTmpBufOpt has to be chosen through deserialisation.");
            }
            contentValueTempTmpBuf.value = static_cast<Ark_ResourceStr>(contentValueTempTmpBufOpt);
        }
        Opt_ResourceStr contentValueTemp = contentValueTempTmpBuf;;
        GetNodeModifiers()->getSliderModifier()->setShowTips(self, value, static_cast<Opt_ResourceStr*>(&contentValueTemp));
}
KOALA_INTEROP_DIRECT_V4(SliderAttribute_setShowTips, Ark_NativePointer, Ark_Boolean, KSerializerBuffer, int32_t)
void impl_SliderAttribute_set_onChangeEvent_value(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Number_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Number value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_NUMBER_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Number value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_NUMBER_VOID))))};;
        GetNodeModifiers()->getSliderModifier()->set_onChangeEvent_value(self, static_cast<Callback_Number_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(SliderAttribute_set_onChangeEvent_value, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_BaseSpan_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getBaseSpanModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(BaseSpan_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
Ark_NativePointer impl_Swiper_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getSwiperModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(Swiper_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_SwiperInterface_setSwiperOptions(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto controllerValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_SwiperController controllerValueTempTmpBuf = {};
        controllerValueTempTmpBuf.tag = controllerValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((controllerValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            controllerValueTempTmpBuf.value = static_cast<Ark_SwiperController>(SwiperController_serializer::read(thisDeserializer));
        }
        Opt_SwiperController controllerValueTemp = controllerValueTempTmpBuf;;
        GetNodeModifiers()->getSwiperModifier()->setSwiperOptions(self, static_cast<Opt_SwiperController*>(&controllerValueTemp));
}
KOALA_INTEROP_DIRECT_V3(SwiperInterface_setSwiperOptions, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_SwiperAttribute_setIndex(Ark_NativePointer thisPtr, KInteropNumber value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getSwiperModifier()->setIndex(self, (const Ark_Number*) (&value));
}
KOALA_INTEROP_V2(SwiperAttribute_setIndex, Ark_NativePointer, KInteropNumber)
void impl_SwiperAttribute_setIndicator(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_DotIndicator valueValueTemp = DotIndicator_serializer::read(thisDeserializer);;
        GetNodeModifiers()->getSwiperModifier()->setIndicator(self, static_cast<Ark_DotIndicator*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(SwiperAttribute_setIndicator, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_SwiperAttribute_set_onChangeEvent_index(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Number_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Number index)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_NUMBER_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Number index)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_NUMBER_VOID))))};;
        GetNodeModifiers()->getSwiperModifier()->set_onChangeEvent_index(self, static_cast<Callback_Number_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(SwiperAttribute_set_onChangeEvent_index, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_SymbolGlyph_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getSymbolGlyphModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(SymbolGlyph_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_SymbolGlyphInterface_setSymbolGlyphOptions(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Resource valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valueValueTempTmpBuf.value = Resource_serializer::read(thisDeserializer);
        }
        Opt_Resource valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getSymbolGlyphModifier()->setSymbolGlyphOptions(self, static_cast<Opt_Resource*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(SymbolGlyphInterface_setSymbolGlyphOptions, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_SymbolGlyphAttribute_setFontSize(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_Number_String_Resource valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            valueValueTempTmpBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (valueValueTempTmpBufUnionSelector == 2) {
            valueValueTempTmpBuf.selector = 2;
            valueValueTempTmpBuf.value2 = Resource_serializer::read(thisDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_Number_String_Resource valueValueTemp = static_cast<Ark_Union_Number_String_Resource>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getSymbolGlyphModifier()->setFontSize(self, static_cast<Ark_Union_Number_String_Resource*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(SymbolGlyphAttribute_setFontSize, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_TabContent_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getTabContentModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(TabContent_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_TabContentInterface_setTabContentOptions(Ark_NativePointer thisPtr) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTabContentModifier()->setTabContentOptions(self);
}
KOALA_INTEROP_DIRECT_V1(TabContentInterface_setTabContentOptions, Ark_NativePointer)
void impl_TabContentAttribute_setTabBar0(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_String_Resource_CustomBuilder_Literal_Union_String_Resource_icon_text valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            valueValueTempTmpBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = Resource_serializer::read(thisDeserializer);
        } else if (valueValueTempTmpBufUnionSelector == 2) {
            valueValueTempTmpBuf.selector = 2;
            valueValueTempTmpBuf.value2 = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CUSTOMBUILDER)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CUSTOMBUILDER))))};
        } else if (valueValueTempTmpBufUnionSelector == 3) {
            valueValueTempTmpBuf.selector = 3;
            Ark_Literal_Union_String_Resource_icon_text valueValueTempTmpBufBufU = {};
            const auto valueValueTempTmpBufBufUIconTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
            Opt_Union_String_Resource valueValueTempTmpBufBufUIconTempBuf = {};
            valueValueTempTmpBufBufUIconTempBuf.tag = valueValueTempTmpBufBufUIconTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
            if ((valueValueTempTmpBufBufUIconTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                const Ark_Int8 valueValueTempTmpBufBufUIconTempBufOptUnionSelector = thisDeserializer.readInt8();
                Ark_Union_String_Resource valueValueTempTmpBufBufUIconTempBufOpt = {};
                valueValueTempTmpBufBufUIconTempBufOpt.selector = valueValueTempTmpBufBufUIconTempBufOptUnionSelector;
                if (valueValueTempTmpBufBufUIconTempBufOptUnionSelector == 0) {
                    valueValueTempTmpBufBufUIconTempBufOpt.selector = 0;
                    valueValueTempTmpBufBufUIconTempBufOpt.value0 = static_cast<Ark_String>(thisDeserializer.readString());
                } else if (valueValueTempTmpBufBufUIconTempBufOptUnionSelector == 1) {
                    valueValueTempTmpBufBufUIconTempBufOpt.selector = 1;
                    valueValueTempTmpBufBufUIconTempBufOpt.value1 = Resource_serializer::read(thisDeserializer);
                } else {
                    INTEROP_FATAL("One of the branches for valueValueTempTmpBufBufUIconTempBufOpt has to be chosen through deserialisation.");
                }
                valueValueTempTmpBufBufUIconTempBuf.value = static_cast<Ark_Union_String_Resource>(valueValueTempTmpBufBufUIconTempBufOpt);
            }
            valueValueTempTmpBufBufU.icon = valueValueTempTmpBufBufUIconTempBuf;
            const auto valueValueTempTmpBufBufUTextTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
            Opt_Union_String_Resource valueValueTempTmpBufBufUTextTempBuf = {};
            valueValueTempTmpBufBufUTextTempBuf.tag = valueValueTempTmpBufBufUTextTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
            if ((valueValueTempTmpBufBufUTextTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
                const Ark_Int8 valueValueTempTmpBufBufUTextTempBufOptUnionSelector = thisDeserializer.readInt8();
                Ark_Union_String_Resource valueValueTempTmpBufBufUTextTempBufOpt = {};
                valueValueTempTmpBufBufUTextTempBufOpt.selector = valueValueTempTmpBufBufUTextTempBufOptUnionSelector;
                if (valueValueTempTmpBufBufUTextTempBufOptUnionSelector == 0) {
                    valueValueTempTmpBufBufUTextTempBufOpt.selector = 0;
                    valueValueTempTmpBufBufUTextTempBufOpt.value0 = static_cast<Ark_String>(thisDeserializer.readString());
                } else if (valueValueTempTmpBufBufUTextTempBufOptUnionSelector == 1) {
                    valueValueTempTmpBufBufUTextTempBufOpt.selector = 1;
                    valueValueTempTmpBufBufUTextTempBufOpt.value1 = Resource_serializer::read(thisDeserializer);
                } else {
                    INTEROP_FATAL("One of the branches for valueValueTempTmpBufBufUTextTempBufOpt has to be chosen through deserialisation.");
                }
                valueValueTempTmpBufBufUTextTempBuf.value = static_cast<Ark_Union_String_Resource>(valueValueTempTmpBufBufUTextTempBufOpt);
            }
            valueValueTempTmpBufBufU.text = valueValueTempTmpBufBufUTextTempBuf;
            valueValueTempTmpBuf.value3 = valueValueTempTmpBufBufU;
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_String_Resource_CustomBuilder_Literal_Union_String_Resource_icon_text valueValueTemp = static_cast<Ark_Union_String_Resource_CustomBuilder_Literal_Union_String_Resource_icon_text>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getTabContentModifier()->setTabBar0(self, static_cast<Ark_Union_String_Resource_CustomBuilder_Literal_Union_String_Resource_icon_text*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TabContentAttribute_setTabBar0, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TabContentAttribute_setTabBar1(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_SubTabBarStyle_BottomTabBarStyle valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            valueValueTempTmpBuf.value0 = SubTabBarStyle_serializer::read(thisDeserializer);
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = BottomTabBarStyle_serializer::read(thisDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_SubTabBarStyle_BottomTabBarStyle valueValueTemp = static_cast<Ark_Union_SubTabBarStyle_BottomTabBarStyle>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getTabContentModifier()->setTabBar1(self, static_cast<Ark_Union_SubTabBarStyle_BottomTabBarStyle*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TabContentAttribute_setTabBar1, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_Tabs_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getTabsModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(Tabs_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_TabsInterface_setTabsOptions(Ark_NativePointer thisPtr) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTabsModifier()->setTabsOptions(self);
}
KOALA_INTEROP_DIRECT_V1(TabsInterface_setTabsOptions, Ark_NativePointer)
void impl_TabsAttribute_setBarMode(Ark_NativePointer thisPtr, Ark_Int32 value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTabsModifier()->setBarMode(self, static_cast<Ark_BarMode>(value));
}
KOALA_INTEROP_DIRECT_V2(TabsAttribute_setBarMode, Ark_NativePointer, Ark_Int32)
void impl_TabsAttribute_set_onChangeEvent_index(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Number_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Number index)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_NUMBER_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Number index)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_NUMBER_VOID))))};;
        GetNodeModifiers()->getTabsModifier()->set_onChangeEvent_index(self, static_cast<Callback_Number_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TabsAttribute_set_onChangeEvent_index, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_Test_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getTestModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(Test_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_TestInterface_setTestOptions(Ark_NativePointer thisPtr) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTestModifier()->setTestOptions(self);
}
KOALA_INTEROP_DIRECT_V1(TestInterface_setTestOptions, Ark_NativePointer)
void impl_TestAttribute_setTestBoolean(Ark_NativePointer thisPtr, Ark_Boolean value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTestModifier()->setTestBoolean(self, value);
}
KOALA_INTEROP_DIRECT_V2(TestAttribute_setTestBoolean, Ark_NativePointer, Ark_Boolean)
void impl_TestAttribute_setTestNumber(Ark_NativePointer thisPtr, KInteropNumber value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTestModifier()->setTestNumber(self, (const Ark_Number*) (&value));
}
KOALA_INTEROP_V2(TestAttribute_setTestNumber, Ark_NativePointer, KInteropNumber)
void impl_TestAttribute_setTestString(Ark_NativePointer thisPtr, const KStringPtr& value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTestModifier()->setTestString(self, (const Ark_String*) (&value));
}
KOALA_INTEROP_V2(TestAttribute_setTestString, Ark_NativePointer, KStringPtr)
void impl_TestAttribute_setTestEnum(Ark_NativePointer thisPtr, Ark_Int32 value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTestModifier()->setTestEnum(self, static_cast<Ark_EnumDTS>(value));
}
KOALA_INTEROP_DIRECT_V2(TestAttribute_setTestEnum, Ark_NativePointer, Ark_Int32)
void impl_TestAttribute_setTestFunction(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Number_Boolean valueValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Number a, const Callback_Boolean_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_NUMBER_BOOLEAN)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Number a, const Callback_Boolean_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_NUMBER_BOOLEAN))))};;
        GetNodeModifiers()->getTestModifier()->setTestFunction(self, static_cast<Callback_Number_Boolean*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestFunction, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestBasicMix(Ark_NativePointer thisPtr, KInteropNumber v1, const KStringPtr& v2, KInteropNumber v3) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTestModifier()->setTestBasicMix(self, (const Ark_Number*) (&v1), (const Ark_String*) (&v2), (const Ark_Number*) (&v3));
}
KOALA_INTEROP_V4(TestAttribute_setTestBasicMix, Ark_NativePointer, KInteropNumber, KStringPtr, KInteropNumber)
void impl_TestAttribute_setTestBooleanUndefined(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Boolean valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valueValueTempTmpBuf.value = thisDeserializer.readBoolean();
        }
        Opt_Boolean valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestBooleanUndefined(self, static_cast<Opt_Boolean*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestBooleanUndefined, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestNumberUndefined(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valueValueTempTmpBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Opt_Number valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestNumberUndefined(self, static_cast<Opt_Number*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestNumberUndefined, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestStringUndefined(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_String valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valueValueTempTmpBuf.value = static_cast<Ark_String>(thisDeserializer.readString());
        }
        Opt_String valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestStringUndefined(self, static_cast<Opt_String*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestStringUndefined, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestEnumUndefined(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_EnumDTS valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valueValueTempTmpBuf.value = static_cast<Ark_EnumDTS>(thisDeserializer.readInt32());
        }
        Opt_EnumDTS valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestEnumUndefined(self, static_cast<Opt_EnumDTS*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestEnumUndefined, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestFunctionUndefined(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Number_Opt_Boolean valueValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Number a, const Callback_Opt_Boolean_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_NUMBER_OPT_BOOLEAN)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Number a, const Callback_Opt_Boolean_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_NUMBER_OPT_BOOLEAN))))};;
        GetNodeModifiers()->getTestModifier()->setTestFunctionUndefined(self, static_cast<Callback_Number_Opt_Boolean*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestFunctionUndefined, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestUnionNumberEnum(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_Number_EnumDTS valValueTempTmpBuf = {};
        valValueTempTmpBuf.selector = valValueTempTmpBufUnionSelector;
        if (valValueTempTmpBufUnionSelector == 0) {
            valValueTempTmpBuf.selector = 0;
            valValueTempTmpBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valValueTempTmpBufUnionSelector == 1) {
            valValueTempTmpBuf.selector = 1;
            valValueTempTmpBuf.value1 = static_cast<Ark_EnumDTS>(thisDeserializer.readInt32());
        } else {
            INTEROP_FATAL("One of the branches for valValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_Number_EnumDTS valValueTemp = static_cast<Ark_Union_Number_EnumDTS>(valValueTempTmpBuf);;
        GetNodeModifiers()->getTestModifier()->setTestUnionNumberEnum(self, static_cast<Ark_Union_Number_EnumDTS*>(&valValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestUnionNumberEnum, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestUnionBooleanString(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_Boolean_String valValueTempTmpBuf = {};
        valValueTempTmpBuf.selector = valValueTempTmpBufUnionSelector;
        if (valValueTempTmpBufUnionSelector == 0) {
            valValueTempTmpBuf.selector = 0;
            valValueTempTmpBuf.value0 = thisDeserializer.readBoolean();
        } else if (valValueTempTmpBufUnionSelector == 1) {
            valValueTempTmpBuf.selector = 1;
            valValueTempTmpBuf.value1 = static_cast<Ark_String>(thisDeserializer.readString());
        } else {
            INTEROP_FATAL("One of the branches for valValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_Boolean_String valValueTemp = static_cast<Ark_Union_Boolean_String>(valValueTempTmpBuf);;
        GetNodeModifiers()->getTestModifier()->setTestUnionBooleanString(self, static_cast<Ark_Union_Boolean_String*>(&valValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestUnionBooleanString, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestUnionStringNumber(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_String_Number valValueTempTmpBuf = {};
        valValueTempTmpBuf.selector = valValueTempTmpBufUnionSelector;
        if (valValueTempTmpBufUnionSelector == 0) {
            valValueTempTmpBuf.selector = 0;
            valValueTempTmpBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (valValueTempTmpBufUnionSelector == 1) {
            valValueTempTmpBuf.selector = 1;
            valValueTempTmpBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else {
            INTEROP_FATAL("One of the branches for valValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_String_Number valValueTemp = static_cast<Ark_Union_String_Number>(valValueTempTmpBuf);;
        GetNodeModifiers()->getTestModifier()->setTestUnionStringNumber(self, static_cast<Ark_Union_String_Number*>(&valValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestUnionStringNumber, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestUnionBooleanStringNumberUndefined(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Union_Boolean_String_Number valValueTempTmpBuf = {};
        valValueTempTmpBuf.tag = valValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            const Ark_Int8 valValueTempTmpBufOptUnionSelector = thisDeserializer.readInt8();
            Ark_Union_Boolean_String_Number valValueTempTmpBufOpt = {};
            valValueTempTmpBufOpt.selector = valValueTempTmpBufOptUnionSelector;
            if (valValueTempTmpBufOptUnionSelector == 0) {
                valValueTempTmpBufOpt.selector = 0;
                valValueTempTmpBufOpt.value0 = thisDeserializer.readBoolean();
            } else if (valValueTempTmpBufOptUnionSelector == 1) {
                valValueTempTmpBufOpt.selector = 1;
                valValueTempTmpBufOpt.value1 = static_cast<Ark_String>(thisDeserializer.readString());
            } else if (valValueTempTmpBufOptUnionSelector == 2) {
                valValueTempTmpBufOpt.selector = 2;
                valValueTempTmpBufOpt.value2 = static_cast<Ark_Number>(thisDeserializer.readNumber());
            } else {
                INTEROP_FATAL("One of the branches for valValueTempTmpBufOpt has to be chosen through deserialisation.");
            }
            valValueTempTmpBuf.value = static_cast<Ark_Union_Boolean_String_Number>(valValueTempTmpBufOpt);
        }
        Opt_Union_Boolean_String_Number valValueTemp = valValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestUnionBooleanStringNumberUndefined(self, static_cast<Opt_Union_Boolean_String_Number*>(&valValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestUnionBooleanStringNumberUndefined, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestUnionWithGenericArray(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_Number_Array_String valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            valueValueTempTmpBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            const Ark_Int32 valueValueTempTmpBufBufULength = thisDeserializer.readInt32();
            Array_String valueValueTempTmpBufBufU = {};
            thisDeserializer.resizeArray<std::decay<decltype(valueValueTempTmpBufBufU)>::type,
        std::decay<decltype(*valueValueTempTmpBufBufU.array)>::type>(&valueValueTempTmpBufBufU, valueValueTempTmpBufBufULength);
            for (int valueValueTempTmpBufBufUBufCounterI = 0; valueValueTempTmpBufBufUBufCounterI < valueValueTempTmpBufBufULength; valueValueTempTmpBufBufUBufCounterI++) {
                valueValueTempTmpBufBufU.array[valueValueTempTmpBufBufUBufCounterI] = static_cast<Ark_String>(thisDeserializer.readString());
            }
            valueValueTempTmpBuf.value1 = valueValueTempTmpBufBufU;
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_Number_Array_String valueValueTemp = static_cast<Ark_Union_Number_Array_String>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getTestModifier()->setTestUnionWithGenericArray(self, static_cast<Ark_Union_Number_Array_String*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestUnionWithGenericArray, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestUnionWithArrayType(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_Number_Array_String valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            valueValueTempTmpBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            const Ark_Int32 valueValueTempTmpBufBufULength = thisDeserializer.readInt32();
            Array_String valueValueTempTmpBufBufU = {};
            thisDeserializer.resizeArray<std::decay<decltype(valueValueTempTmpBufBufU)>::type,
        std::decay<decltype(*valueValueTempTmpBufBufU.array)>::type>(&valueValueTempTmpBufBufU, valueValueTempTmpBufBufULength);
            for (int valueValueTempTmpBufBufUBufCounterI = 0; valueValueTempTmpBufBufUBufCounterI < valueValueTempTmpBufBufULength; valueValueTempTmpBufBufUBufCounterI++) {
                valueValueTempTmpBufBufU.array[valueValueTempTmpBufBufUBufCounterI] = static_cast<Ark_String>(thisDeserializer.readString());
            }
            valueValueTempTmpBuf.value1 = valueValueTempTmpBufBufU;
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_Number_Array_String valueValueTemp = static_cast<Ark_Union_Number_Array_String>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getTestModifier()->setTestUnionWithArrayType(self, static_cast<Ark_Union_Number_Array_String*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestUnionWithArrayType, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestBooleanArray(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int32 valueValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_Boolean valueValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(valueValueTempTmpBuf)>::type,
        std::decay<decltype(*valueValueTempTmpBuf.array)>::type>(&valueValueTempTmpBuf, valueValueTempTmpBufLength);
        for (int valueValueTempTmpBufBufCounterI = 0; valueValueTempTmpBufBufCounterI < valueValueTempTmpBufLength; valueValueTempTmpBufBufCounterI++) {
            valueValueTempTmpBuf.array[valueValueTempTmpBufBufCounterI] = thisDeserializer.readBoolean();
        }
        Array_Boolean valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestBooleanArray(self, static_cast<Array_Boolean*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestBooleanArray, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestNumberArray(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int32 valueValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_Number valueValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(valueValueTempTmpBuf)>::type,
        std::decay<decltype(*valueValueTempTmpBuf.array)>::type>(&valueValueTempTmpBuf, valueValueTempTmpBufLength);
        for (int valueValueTempTmpBufBufCounterI = 0; valueValueTempTmpBufBufCounterI < valueValueTempTmpBufLength; valueValueTempTmpBufBufCounterI++) {
            valueValueTempTmpBuf.array[valueValueTempTmpBufBufCounterI] = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Array_Number valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestNumberArray(self, static_cast<Array_Number*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestNumberArray, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestStringArray(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int32 valueValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_String valueValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(valueValueTempTmpBuf)>::type,
        std::decay<decltype(*valueValueTempTmpBuf.array)>::type>(&valueValueTempTmpBuf, valueValueTempTmpBufLength);
        for (int valueValueTempTmpBufBufCounterI = 0; valueValueTempTmpBufBufCounterI < valueValueTempTmpBufLength; valueValueTempTmpBufBufCounterI++) {
            valueValueTempTmpBuf.array[valueValueTempTmpBufBufCounterI] = static_cast<Ark_String>(thisDeserializer.readString());
        }
        Array_String valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestStringArray(self, static_cast<Array_String*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestStringArray, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestEnumArray(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int32 valueValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_EnumDTS valueValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(valueValueTempTmpBuf)>::type,
        std::decay<decltype(*valueValueTempTmpBuf.array)>::type>(&valueValueTempTmpBuf, valueValueTempTmpBufLength);
        for (int valueValueTempTmpBufBufCounterI = 0; valueValueTempTmpBufBufCounterI < valueValueTempTmpBufLength; valueValueTempTmpBufBufCounterI++) {
            valueValueTempTmpBuf.array[valueValueTempTmpBufBufCounterI] = static_cast<Ark_EnumDTS>(thisDeserializer.readInt32());
        }
        Array_EnumDTS valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestEnumArray(self, static_cast<Array_EnumDTS*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestEnumArray, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestArrayMix(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int32 v1ValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_Number v1ValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(v1ValueTempTmpBuf)>::type,
        std::decay<decltype(*v1ValueTempTmpBuf.array)>::type>(&v1ValueTempTmpBuf, v1ValueTempTmpBufLength);
        for (int v1ValueTempTmpBufBufCounterI = 0; v1ValueTempTmpBufBufCounterI < v1ValueTempTmpBufLength; v1ValueTempTmpBufBufCounterI++) {
            v1ValueTempTmpBuf.array[v1ValueTempTmpBufBufCounterI] = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Array_Number v1ValueTemp = v1ValueTempTmpBuf;;
        const Ark_Int32 v2ValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_String v2ValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(v2ValueTempTmpBuf)>::type,
        std::decay<decltype(*v2ValueTempTmpBuf.array)>::type>(&v2ValueTempTmpBuf, v2ValueTempTmpBufLength);
        for (int v2ValueTempTmpBufBufCounterI = 0; v2ValueTempTmpBufBufCounterI < v2ValueTempTmpBufLength; v2ValueTempTmpBufBufCounterI++) {
            v2ValueTempTmpBuf.array[v2ValueTempTmpBufBufCounterI] = static_cast<Ark_String>(thisDeserializer.readString());
        }
        Array_String v2ValueTemp = v2ValueTempTmpBuf;;
        const Ark_Int32 v3ValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_EnumDTS v3ValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(v3ValueTempTmpBuf)>::type,
        std::decay<decltype(*v3ValueTempTmpBuf.array)>::type>(&v3ValueTempTmpBuf, v3ValueTempTmpBufLength);
        for (int v3ValueTempTmpBufBufCounterI = 0; v3ValueTempTmpBufBufCounterI < v3ValueTempTmpBufLength; v3ValueTempTmpBufBufCounterI++) {
            v3ValueTempTmpBuf.array[v3ValueTempTmpBufBufCounterI] = static_cast<Ark_EnumDTS>(thisDeserializer.readInt32());
        }
        Array_EnumDTS v3ValueTemp = v3ValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestArrayMix(self, static_cast<Array_Number*>(&v1ValueTemp), static_cast<Array_String*>(&v2ValueTemp), static_cast<Array_EnumDTS*>(&v3ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestArrayMix, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestTupleBooleanNumber(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Tuple_Boolean_Number valueValueTempTmpBuf = {};
        const auto valueValueTempTmpBufValue0TempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Boolean valueValueTempTmpBufValue0TempBuf = {};
        valueValueTempTmpBufValue0TempBuf.tag = valueValueTempTmpBufValue0TempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBufValue0TempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valueValueTempTmpBufValue0TempBuf.value = thisDeserializer.readBoolean();
        }
        valueValueTempTmpBuf.value0 = valueValueTempTmpBufValue0TempBuf;
        const auto valueValueTempTmpBufValue1TempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number valueValueTempTmpBufValue1TempBuf = {};
        valueValueTempTmpBufValue1TempBuf.tag = valueValueTempTmpBufValue1TempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBufValue1TempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valueValueTempTmpBufValue1TempBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        valueValueTempTmpBuf.value1 = valueValueTempTmpBufValue1TempBuf;
        Ark_Tuple_Boolean_Number valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestTupleBooleanNumber(self, static_cast<Ark_Tuple_Boolean_Number*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestTupleBooleanNumber, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestTupleNumberStringEnum(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Tuple_Number_String_EnumDTS valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        valueValueTempTmpBuf.value1 = static_cast<Ark_String>(thisDeserializer.readString());
        valueValueTempTmpBuf.value2 = static_cast<Ark_EnumDTS>(thisDeserializer.readInt32());
        Ark_Tuple_Number_String_EnumDTS valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestTupleNumberStringEnum(self, static_cast<Ark_Tuple_Number_String_EnumDTS*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestTupleNumberStringEnum, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestTupleOptional(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Tuple_Number_String_Boolean_EnumDTS valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        valueValueTempTmpBuf.value1 = static_cast<Ark_String>(thisDeserializer.readString());
        valueValueTempTmpBuf.value2 = thisDeserializer.readBoolean();
        valueValueTempTmpBuf.value3 = static_cast<Ark_EnumDTS>(thisDeserializer.readInt32());
        Ark_Tuple_Number_String_Boolean_EnumDTS valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestTupleOptional(self, static_cast<Ark_Tuple_Number_String_Boolean_EnumDTS*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestTupleOptional, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestTupleUnion(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Type_TestAttribute_testTupleUnion_value valueValueTempTmpBuf = {};
        const Ark_Int8 valueValueTempTmpBufValue0TempBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_Number_String valueValueTempTmpBufValue0TempBuf = {};
        valueValueTempTmpBufValue0TempBuf.selector = valueValueTempTmpBufValue0TempBufUnionSelector;
        if (valueValueTempTmpBufValue0TempBufUnionSelector == 0) {
            valueValueTempTmpBufValue0TempBuf.selector = 0;
            valueValueTempTmpBufValue0TempBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valueValueTempTmpBufValue0TempBufUnionSelector == 1) {
            valueValueTempTmpBufValue0TempBuf.selector = 1;
            valueValueTempTmpBufValue0TempBuf.value1 = static_cast<Ark_String>(thisDeserializer.readString());
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBufValue0TempBuf has to be chosen through deserialisation.");
        }
        valueValueTempTmpBuf.value0 = static_cast<Ark_Union_Number_String>(valueValueTempTmpBufValue0TempBuf);
        const Ark_Int8 valueValueTempTmpBufValue1TempBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_Boolean_EnumDTS valueValueTempTmpBufValue1TempBuf = {};
        valueValueTempTmpBufValue1TempBuf.selector = valueValueTempTmpBufValue1TempBufUnionSelector;
        if (valueValueTempTmpBufValue1TempBufUnionSelector == 0) {
            valueValueTempTmpBufValue1TempBuf.selector = 0;
            valueValueTempTmpBufValue1TempBuf.value0 = thisDeserializer.readBoolean();
        } else if (valueValueTempTmpBufValue1TempBufUnionSelector == 1) {
            valueValueTempTmpBufValue1TempBuf.selector = 1;
            valueValueTempTmpBufValue1TempBuf.value1 = static_cast<Ark_EnumDTS>(thisDeserializer.readInt32());
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBufValue1TempBuf has to be chosen through deserialisation.");
        }
        valueValueTempTmpBuf.value1 = static_cast<Ark_Union_Boolean_EnumDTS>(valueValueTempTmpBufValue1TempBuf);
        const Ark_Int8 valueValueTempTmpBufValue2TempBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_String_EnumDTS_Boolean valueValueTempTmpBufValue2TempBuf = {};
        valueValueTempTmpBufValue2TempBuf.selector = valueValueTempTmpBufValue2TempBufUnionSelector;
        if (valueValueTempTmpBufValue2TempBufUnionSelector == 0) {
            valueValueTempTmpBufValue2TempBuf.selector = 0;
            valueValueTempTmpBufValue2TempBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (valueValueTempTmpBufValue2TempBufUnionSelector == 1) {
            valueValueTempTmpBufValue2TempBuf.selector = 1;
            valueValueTempTmpBufValue2TempBuf.value1 = static_cast<Ark_EnumDTS>(thisDeserializer.readInt32());
        } else if (valueValueTempTmpBufValue2TempBufUnionSelector == 2) {
            valueValueTempTmpBufValue2TempBuf.selector = 2;
            valueValueTempTmpBufValue2TempBuf.value2 = thisDeserializer.readBoolean();
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBufValue2TempBuf has to be chosen through deserialisation.");
        }
        valueValueTempTmpBuf.value2 = static_cast<Ark_Union_String_EnumDTS_Boolean>(valueValueTempTmpBufValue2TempBuf);
        Ark_Type_TestAttribute_testTupleUnion_value valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestTupleUnion(self, static_cast<Ark_Type_TestAttribute_testTupleUnion_value*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestTupleUnion, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestArrayRefBoolean(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int32 valueValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_Boolean valueValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(valueValueTempTmpBuf)>::type,
        std::decay<decltype(*valueValueTempTmpBuf.array)>::type>(&valueValueTempTmpBuf, valueValueTempTmpBufLength);
        for (int valueValueTempTmpBufBufCounterI = 0; valueValueTempTmpBufBufCounterI < valueValueTempTmpBufLength; valueValueTempTmpBufBufCounterI++) {
            valueValueTempTmpBuf.array[valueValueTempTmpBufBufCounterI] = thisDeserializer.readBoolean();
        }
        Array_Boolean valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestArrayRefBoolean(self, static_cast<Array_Boolean*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestArrayRefBoolean, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestArrayRefNumber(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int32 valueValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_Number valueValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(valueValueTempTmpBuf)>::type,
        std::decay<decltype(*valueValueTempTmpBuf.array)>::type>(&valueValueTempTmpBuf, valueValueTempTmpBufLength);
        for (int valueValueTempTmpBufBufCounterI = 0; valueValueTempTmpBufBufCounterI < valueValueTempTmpBufLength; valueValueTempTmpBufBufCounterI++) {
            valueValueTempTmpBuf.array[valueValueTempTmpBufBufCounterI] = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Array_Number valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestArrayRefNumber(self, static_cast<Array_Number*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestArrayRefNumber, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestBooleanInterface(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_BooleanInterfaceDTS valueValueTemp = BooleanInterfaceDTS_serializer::read(thisDeserializer);;
        GetNodeModifiers()->getTestModifier()->setTestBooleanInterface(self, static_cast<Ark_BooleanInterfaceDTS*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestBooleanInterface, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestNumberInterface(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_NumberInterfaceDTS valueValueTemp = NumberInterfaceDTS_serializer::read(thisDeserializer);;
        GetNodeModifiers()->getTestModifier()->setTestNumberInterface(self, static_cast<Ark_NumberInterfaceDTS*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestNumberInterface, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestStringInterface(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_StringInterfaceDTS valueValueTemp = StringInterfaceDTS_serializer::read(thisDeserializer);;
        GetNodeModifiers()->getTestModifier()->setTestStringInterface(self, static_cast<Ark_StringInterfaceDTS*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestStringInterface, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestUnionInterface(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_UnionInterfaceDTS valueValueTemp = UnionInterfaceDTS_serializer::read(thisDeserializer);;
        GetNodeModifiers()->getTestModifier()->setTestUnionInterface(self, static_cast<Ark_UnionInterfaceDTS*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestUnionInterface, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestUnionOptional(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_UnionOptionalInterfaceDTS valueValueTemp = UnionOptionalInterfaceDTS_serializer::read(thisDeserializer);;
        GetNodeModifiers()->getTestModifier()->setTestUnionOptional(self, static_cast<Ark_UnionOptionalInterfaceDTS*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestUnionOptional, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestTupleInterface(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_TupleInterfaceDTS valueValueTemp = TupleInterfaceDTS_serializer::read(thisDeserializer);;
        GetNodeModifiers()->getTestModifier()->setTestTupleInterface(self, static_cast<Ark_TupleInterfaceDTS*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestTupleInterface, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestOptionInterface(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_OptionInterfaceDTS valueValueTemp = OptionInterfaceDTS_serializer::read(thisDeserializer);;
        GetNodeModifiers()->getTestModifier()->setTestOptionInterface(self, static_cast<Ark_OptionInterfaceDTS*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestOptionInterface, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestArrayRefNumberInterface(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_ArrayRefNumberInterfaceDTS valueValueTemp = ArrayRefNumberInterfaceDTS_serializer::read(thisDeserializer);;
        GetNodeModifiers()->getTestModifier()->setTestArrayRefNumberInterface(self, static_cast<Ark_ArrayRefNumberInterfaceDTS*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestArrayRefNumberInterface, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestBooleanInterfaceOption(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_BooleanInterfaceDTS valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valueValueTempTmpBuf.value = BooleanInterfaceDTS_serializer::read(thisDeserializer);
        }
        Opt_BooleanInterfaceDTS valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestBooleanInterfaceOption(self, static_cast<Opt_BooleanInterfaceDTS*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestBooleanInterfaceOption, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestBooleanInterfaceTuple(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Tuple_BooleanInterfaceDTS valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.value0 = BooleanInterfaceDTS_serializer::read(thisDeserializer);
        Ark_Tuple_BooleanInterfaceDTS valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestBooleanInterfaceTuple(self, static_cast<Ark_Tuple_BooleanInterfaceDTS*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestBooleanInterfaceTuple, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestBooleanInterfaceArray(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int32 valueValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_BooleanInterfaceDTS valueValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(valueValueTempTmpBuf)>::type,
        std::decay<decltype(*valueValueTempTmpBuf.array)>::type>(&valueValueTempTmpBuf, valueValueTempTmpBufLength);
        for (int valueValueTempTmpBufBufCounterI = 0; valueValueTempTmpBufBufCounterI < valueValueTempTmpBufLength; valueValueTempTmpBufBufCounterI++) {
            valueValueTempTmpBuf.array[valueValueTempTmpBufBufCounterI] = BooleanInterfaceDTS_serializer::read(thisDeserializer);
        }
        Array_BooleanInterfaceDTS valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestBooleanInterfaceArray(self, static_cast<Array_BooleanInterfaceDTS*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestBooleanInterfaceArray, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestBooleanInterfaceArrayRef(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int32 valueValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_BooleanInterfaceDTS valueValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(valueValueTempTmpBuf)>::type,
        std::decay<decltype(*valueValueTempTmpBuf.array)>::type>(&valueValueTempTmpBuf, valueValueTempTmpBufLength);
        for (int valueValueTempTmpBufBufCounterI = 0; valueValueTempTmpBufBufCounterI < valueValueTempTmpBufLength; valueValueTempTmpBufBufCounterI++) {
            valueValueTempTmpBuf.array[valueValueTempTmpBufBufCounterI] = BooleanInterfaceDTS_serializer::read(thisDeserializer);
        }
        Array_BooleanInterfaceDTS valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTestModifier()->setTestBooleanInterfaceArrayRef(self, static_cast<Array_BooleanInterfaceDTS*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestBooleanInterfaceArrayRef, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestInterfaceMixed(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength, KInteropNumber v2) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_UnionInterfaceDTS v1ValueTemp = UnionInterfaceDTS_serializer::read(thisDeserializer);;
        Ark_TupleInterfaceDTS v3ValueTemp = TupleInterfaceDTS_serializer::read(thisDeserializer);;
        GetNodeModifiers()->getTestModifier()->setTestInterfaceMixed(self, static_cast<Ark_UnionInterfaceDTS*>(&v1ValueTemp), (const Ark_Number*) (&v2), static_cast<Ark_TupleInterfaceDTS*>(&v3ValueTemp));
}
KOALA_INTEROP_V4(TestAttribute_setTestInterfaceMixed, Ark_NativePointer, KSerializerBuffer, int32_t, KInteropNumber)
void impl_TestAttribute_setTestClass(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_ClassDTS valueValueTemp = ClassDTS_serializer::read(thisDeserializer);;
        GetNodeModifiers()->getTestModifier()->setTestClass(self, static_cast<Ark_ClassDTS*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TestAttribute_setTestClass, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TestAttribute_setTestClassWithConstructor(Ark_NativePointer thisPtr, Ark_NativePointer value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTestModifier()->setTestClassWithConstructor(self, static_cast<Ark_ClassWithConstructorDTS>(value));
}
KOALA_INTEROP_DIRECT_V2(TestAttribute_setTestClassWithConstructor, Ark_NativePointer, Ark_NativePointer)
void impl_TestAttribute_setTestClassWithConstructorAndFields(Ark_NativePointer thisPtr, Ark_NativePointer value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTestModifier()->setTestClassWithConstructorAndFields(self, static_cast<Ark_ClassWithConstructorAndFieldsDTS>(value));
}
KOALA_INTEROP_DIRECT_V2(TestAttribute_setTestClassWithConstructorAndFields, Ark_NativePointer, Ark_NativePointer)
void impl_TestAttribute_setTestClassWithConstructorAndMethods(Ark_NativePointer thisPtr, Ark_NativePointer value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTestModifier()->setTestClassWithConstructorAndMethods(self, static_cast<Ark_ClassWithConstructorAndMethodsDTS>(value));
}
KOALA_INTEROP_DIRECT_V2(TestAttribute_setTestClassWithConstructorAndMethods, Ark_NativePointer, Ark_NativePointer)
void impl_TestAttribute_setTestClassWithConstructorAndStaticMethods(Ark_NativePointer thisPtr, Ark_NativePointer value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTestModifier()->setTestClassWithConstructorAndStaticMethods(self, static_cast<Ark_ClassWithConstructorAndStaticMethodsDTS>(value));
}
KOALA_INTEROP_DIRECT_V2(TestAttribute_setTestClassWithConstructorAndStaticMethods, Ark_NativePointer, Ark_NativePointer)
void impl_TestAttribute_setTestClassWithConstructorAndFieldsAndMethods(Ark_NativePointer thisPtr, Ark_NativePointer value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTestModifier()->setTestClassWithConstructorAndFieldsAndMethods(self, static_cast<Ark_ClassWithConstructorAndFieldsAndMethodsDTS>(value));
}
KOALA_INTEROP_DIRECT_V2(TestAttribute_setTestClassWithConstructorAndFieldsAndMethods, Ark_NativePointer, Ark_NativePointer)
void impl_TestAttribute_setTestClassWithConstructorAndNonOptionalParams(Ark_NativePointer thisPtr, Ark_NativePointer value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTestModifier()->setTestClassWithConstructorAndNonOptionalParams(self, static_cast<Ark_ClassWithConstructorAndNonOptionalParamsDTS>(value));
}
KOALA_INTEROP_DIRECT_V2(TestAttribute_setTestClassWithConstructorAndNonOptionalParams, Ark_NativePointer, Ark_NativePointer)
void impl_TestAttribute_setTestClassWithConstructorAndSomeOptionalParams(Ark_NativePointer thisPtr, Ark_NativePointer value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTestModifier()->setTestClassWithConstructorAndSomeOptionalParams(self, static_cast<Ark_ClassWithConstructorAndSomeOptionalParamsDTS>(value));
}
KOALA_INTEROP_DIRECT_V2(TestAttribute_setTestClassWithConstructorAndSomeOptionalParams, Ark_NativePointer, Ark_NativePointer)
void impl_TestAttribute_setTestClassWithConstructorAndAllOptionalParams(Ark_NativePointer thisPtr, Ark_NativePointer value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTestModifier()->setTestClassWithConstructorAndAllOptionalParams(self, static_cast<Ark_ClassWithConstructorAndAllOptionalParamsDTS>(value));
}
KOALA_INTEROP_DIRECT_V2(TestAttribute_setTestClassWithConstructorAndAllOptionalParams, Ark_NativePointer, Ark_NativePointer)
void impl_TestAttribute_setTestClassWithConstructorAndWithoutParams(Ark_NativePointer thisPtr, Ark_NativePointer value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTestModifier()->setTestClassWithConstructorAndWithoutParams(self, static_cast<Ark_ClassWithConstructorAndWithoutParamsDTS>(value));
}
KOALA_INTEROP_DIRECT_V2(TestAttribute_setTestClassWithConstructorAndWithoutParams, Ark_NativePointer, Ark_NativePointer)
Ark_NativePointer impl_TextInput_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getTextInputModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(TextInput_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_TextInputInterface_setTextInputOptions(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_TextInputOptions valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valueValueTempTmpBuf.value = TextInputOptions_serializer::read(thisDeserializer);
        }
        Opt_TextInputOptions valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTextInputModifier()->setTextInputOptions(self, static_cast<Opt_TextInputOptions*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextInputInterface_setTextInputOptions, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TextInputAttribute_setType(Ark_NativePointer thisPtr, Ark_Int32 value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTextInputModifier()->setType(self, static_cast<Ark_InputType>(value));
}
KOALA_INTEROP_DIRECT_V2(TextInputAttribute_setType, Ark_NativePointer, Ark_Int32)
void impl_TextInputAttribute_setContentType(Ark_NativePointer thisPtr, Ark_Int32 value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTextInputModifier()->setContentType(self, static_cast<Ark_ContentType>(value));
}
KOALA_INTEROP_DIRECT_V2(TextInputAttribute_setContentType, Ark_NativePointer, Ark_Int32)
void impl_TextInputAttribute_setOnChange(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        EditableTextOnChangeCallback callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_String value, const Opt_PreviewText previewText)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_EDITABLETEXTONCHANGECALLBACK)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_String value, const Opt_PreviewText previewText)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_EDITABLETEXTONCHANGECALLBACK))))};;
        GetNodeModifiers()->getTextInputModifier()->setOnChange(self, static_cast<EditableTextOnChangeCallback*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextInputAttribute_setOnChange, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TextInputAttribute_setOnEditChanged(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Boolean_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Boolean isEditing)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_BOOLEAN_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Boolean isEditing)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_BOOLEAN_VOID))))};;
        GetNodeModifiers()->getTextInputModifier()->setOnEditChanged(self, static_cast<Callback_Boolean_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextInputAttribute_setOnEditChanged, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TextInputAttribute_set_onChangeEvent_text(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_ResourceStr_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_ResourceStr text)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_RESOURCESTR_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_ResourceStr text)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_RESOURCESTR_VOID))))};;
        GetNodeModifiers()->getTextInputModifier()->set_onChangeEvent_text(self, static_cast<Callback_ResourceStr_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextInputAttribute_set_onChangeEvent_text, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_TextPicker_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getTextPickerModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(TextPicker_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_TextPickerInterface_setTextPickerOptions(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto optionsValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_TextPickerOptions optionsValueTempTmpBuf = {};
        optionsValueTempTmpBuf.tag = optionsValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((optionsValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            optionsValueTempTmpBuf.value = TextPickerOptions_serializer::read(thisDeserializer);
        }
        Opt_TextPickerOptions optionsValueTemp = optionsValueTempTmpBuf;;
        GetNodeModifiers()->getTextPickerModifier()->setTextPickerOptions(self, static_cast<Opt_TextPickerOptions*>(&optionsValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextPickerInterface_setTextPickerOptions, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TextPickerAttribute_setDefaultPickerItemHeight(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_Number_String valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            valueValueTempTmpBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = static_cast<Ark_String>(thisDeserializer.readString());
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_Number_String valueValueTemp = static_cast<Ark_Union_Number_String>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getTextPickerModifier()->setDefaultPickerItemHeight(self, static_cast<Ark_Union_Number_String*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextPickerAttribute_setDefaultPickerItemHeight, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TextPickerAttribute_setCanLoop(Ark_NativePointer thisPtr, Ark_Boolean value) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getTextPickerModifier()->setCanLoop(self, value);
}
KOALA_INTEROP_DIRECT_V2(TextPickerAttribute_setCanLoop, Ark_NativePointer, Ark_Boolean)
void impl_TextPickerAttribute_setOnAccept(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_String_Number_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_String value, const Ark_Number index)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_STRING_NUMBER_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_String value, const Ark_Number index)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_STRING_NUMBER_VOID))))};;
        GetNodeModifiers()->getTextPickerModifier()->setOnAccept(self, static_cast<Callback_String_Number_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextPickerAttribute_setOnAccept, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TextPickerAttribute_setOnCancel(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_VOID))))};;
        GetNodeModifiers()->getTextPickerModifier()->setOnCancel(self, static_cast<Callback_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextPickerAttribute_setOnCancel, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TextPickerAttribute_setOnChange(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Type_TextPickerAttribute_onChange_callback callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Union_String_Array_String value, const Ark_Union_Number_Array_Number index)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_TYPE_TEXTPICKERATTRIBUTE_ONCHANGE_CALLBACK)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Union_String_Array_String value, const Ark_Union_Number_Array_Number index)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_TYPE_TEXTPICKERATTRIBUTE_ONCHANGE_CALLBACK))))};;
        GetNodeModifiers()->getTextPickerModifier()->setOnChange(self, static_cast<Type_TextPickerAttribute_onChange_callback*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextPickerAttribute_setOnChange, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TextPickerAttribute_setSelectedIndex(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_Number_Array_Number valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            valueValueTempTmpBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            const Ark_Int32 valueValueTempTmpBufBufULength = thisDeserializer.readInt32();
            Array_Number valueValueTempTmpBufBufU = {};
            thisDeserializer.resizeArray<std::decay<decltype(valueValueTempTmpBufBufU)>::type,
        std::decay<decltype(*valueValueTempTmpBufBufU.array)>::type>(&valueValueTempTmpBufBufU, valueValueTempTmpBufBufULength);
            for (int valueValueTempTmpBufBufUBufCounterI = 0; valueValueTempTmpBufBufUBufCounterI < valueValueTempTmpBufBufULength; valueValueTempTmpBufBufUBufCounterI++) {
                valueValueTempTmpBufBufU.array[valueValueTempTmpBufBufUBufCounterI] = static_cast<Ark_Number>(thisDeserializer.readNumber());
            }
            valueValueTempTmpBuf.value1 = valueValueTempTmpBufBufU;
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_Number_Array_Number valueValueTemp = static_cast<Ark_Union_Number_Array_Number>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getTextPickerModifier()->setSelectedIndex(self, static_cast<Ark_Union_Number_Array_Number*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextPickerAttribute_setSelectedIndex, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TextPickerAttribute_setDivider(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_DividerOptions valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valueValueTempTmpBuf.value = DividerOptions_serializer::read(thisDeserializer);
        }
        Opt_DividerOptions valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTextPickerModifier()->setDivider(self, static_cast<Opt_DividerOptions*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextPickerAttribute_setDivider, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TextPickerAttribute_setGradientHeight(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Dimension valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            valueValueTempTmpBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valueValueTempTmpBufUnionSelector == 2) {
            valueValueTempTmpBuf.selector = 2;
            valueValueTempTmpBuf.value2 = Resource_serializer::read(thisDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Dimension valueValueTemp = static_cast<Ark_Dimension>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getTextPickerModifier()->setGradientHeight(self, static_cast<Ark_Dimension*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextPickerAttribute_setGradientHeight, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TextPickerAttribute_set_onChangeEvent_selected(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Union_Number_Array_Number_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Union_Number_Array_Number selected)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_UNION_NUMBER_ARRAY_NUMBER_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Union_Number_Array_Number selected)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_UNION_NUMBER_ARRAY_NUMBER_VOID))))};;
        GetNodeModifiers()->getTextPickerModifier()->set_onChangeEvent_selected(self, static_cast<Callback_Union_Number_Array_Number_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextPickerAttribute_set_onChangeEvent_selected, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TextPickerAttribute_set_onChangeEvent_value(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Union_String_Array_String_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Union_String_Array_String value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_UNION_STRING_ARRAY_STRING_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Union_String_Array_String value)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_UNION_STRING_ARRAY_STRING_VOID))))};;
        GetNodeModifiers()->getTextPickerModifier()->set_onChangeEvent_value(self, static_cast<Callback_Union_String_Array_String_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextPickerAttribute_set_onChangeEvent_value, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_Text_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getTextModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(Text_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_TextInterface_setTextOptions(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto contentValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Union_String_Resource contentValueTempTmpBuf = {};
        contentValueTempTmpBuf.tag = contentValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((contentValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            const Ark_Int8 contentValueTempTmpBufOptUnionSelector = thisDeserializer.readInt8();
            Ark_Union_String_Resource contentValueTempTmpBufOpt = {};
            contentValueTempTmpBufOpt.selector = contentValueTempTmpBufOptUnionSelector;
            if (contentValueTempTmpBufOptUnionSelector == 0) {
                contentValueTempTmpBufOpt.selector = 0;
                contentValueTempTmpBufOpt.value0 = static_cast<Ark_String>(thisDeserializer.readString());
            } else if (contentValueTempTmpBufOptUnionSelector == 1) {
                contentValueTempTmpBufOpt.selector = 1;
                contentValueTempTmpBufOpt.value1 = Resource_serializer::read(thisDeserializer);
            } else {
                INTEROP_FATAL("One of the branches for contentValueTempTmpBufOpt has to be chosen through deserialisation.");
            }
            contentValueTempTmpBuf.value = static_cast<Ark_Union_String_Resource>(contentValueTempTmpBufOpt);
        }
        Opt_Union_String_Resource contentValueTemp = contentValueTempTmpBuf;;
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_TextOptions valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valueValueTempTmpBuf.value = TextOptions_serializer::read(thisDeserializer);
        }
        Opt_TextOptions valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getTextModifier()->setTextOptions(self, static_cast<Opt_Union_String_Resource*>(&contentValueTemp), static_cast<Opt_TextOptions*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextInterface_setTextOptions, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TextAttribute_setFont(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Font valueValueTemp = Font_serializer::read(thisDeserializer);;
        GetNodeModifiers()->getTextModifier()->setFont(self, static_cast<Ark_Font*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextAttribute_setFont, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_TextAttribute_setFontColor(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_ResourceColor valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            valueValueTempTmpBuf.value0 = static_cast<Ark_Color>(thisDeserializer.readInt32());
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valueValueTempTmpBufUnionSelector == 2) {
            valueValueTempTmpBuf.selector = 2;
            valueValueTempTmpBuf.value2 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (valueValueTempTmpBufUnionSelector == 3) {
            valueValueTempTmpBuf.selector = 3;
            valueValueTempTmpBuf.value3 = Resource_serializer::read(thisDeserializer);
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_ResourceColor valueValueTemp = static_cast<Ark_ResourceColor>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getTextModifier()->setFontColor(self, static_cast<Ark_ResourceColor*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(TextAttribute_setFontColor, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_UIExtensionComponent_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getUIExtensionComponentModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(UIExtensionComponent_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_UIExtensionComponentInterface_setUIExtensionComponentOptions(Ark_NativePointer thisPtr, Ark_NativePointer want, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto optionsValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_UIExtensionOptions optionsValueTempTmpBuf = {};
        optionsValueTempTmpBuf.tag = optionsValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((optionsValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            optionsValueTempTmpBuf.value = UIExtensionOptions_serializer::read(thisDeserializer);
        }
        Opt_UIExtensionOptions optionsValueTemp = optionsValueTempTmpBuf;;
        GetNodeModifiers()->getUIExtensionComponentModifier()->setUIExtensionComponentOptions(self, static_cast<Ark_Want>(want), static_cast<Opt_UIExtensionOptions*>(&optionsValueTemp));
}
KOALA_INTEROP_DIRECT_V4(UIExtensionComponentInterface_setUIExtensionComponentOptions, Ark_NativePointer, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_UIExtensionComponentAttribute_setOnRemoteReady(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_UIExtensionProxy_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_UIExtensionProxy proxy)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_UIEXTENSIONPROXY_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_UIExtensionProxy proxy)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_UIEXTENSIONPROXY_VOID))))};;
        GetNodeModifiers()->getUIExtensionComponentModifier()->setOnRemoteReady(self, static_cast<Callback_UIExtensionProxy_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(UIExtensionComponentAttribute_setOnRemoteReady, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_UIExtensionComponentAttribute_setOnReceive(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Map_String_Object_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Map_String_Object data)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_MAP_STRING_OBJECT_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Map_String_Object data)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_MAP_STRING_OBJECT_VOID))))};;
        GetNodeModifiers()->getUIExtensionComponentModifier()->setOnReceive(self, static_cast<Callback_Map_String_Object_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(UIExtensionComponentAttribute_setOnReceive, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_UIExtensionComponentAttribute_setOnResult(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_UIExtensionResult_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_UIExtensionResult data)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_UIEXTENSIONRESULT_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_UIExtensionResult data)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_UIEXTENSIONRESULT_VOID))))};;
        GetNodeModifiers()->getUIExtensionComponentModifier()->setOnResult(self, static_cast<Callback_UIExtensionResult_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(UIExtensionComponentAttribute_setOnResult, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_UIExtensionComponentAttribute_setOnRelease(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Number_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_Number selected)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_NUMBER_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_Number selected)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_NUMBER_VOID))))};;
        GetNodeModifiers()->getUIExtensionComponentModifier()->setOnRelease(self, static_cast<Callback_Number_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(UIExtensionComponentAttribute_setOnRelease, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_UIExtensionComponentAttribute_setOnError(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        ErrorCallback callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_ERRORCALLBACK)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_ERRORCALLBACK))))};;
        GetNodeModifiers()->getUIExtensionComponentModifier()->setOnError(self, static_cast<ErrorCallback*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(UIExtensionComponentAttribute_setOnError, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_UIExtensionComponentAttribute_setOnTerminated(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_TerminationInfo_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_TerminationInfo data)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_TERMINATIONINFO_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_TerminationInfo data)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_TERMINATIONINFO_VOID))))};;
        GetNodeModifiers()->getUIExtensionComponentModifier()->setOnTerminated(self, static_cast<Callback_TerminationInfo_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(UIExtensionComponentAttribute_setOnTerminated, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_Vector_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getVectorModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(Vector_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_VectorInterface_setVectorOptions(Ark_NativePointer thisPtr) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getVectorModifier()->setVectorOptions(self);
}
KOALA_INTEROP_DIRECT_V1(VectorInterface_setVectorOptions, Ark_NativePointer)
void impl_VectorAttribute_setTestVector1(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Vector1 valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.x0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        valueValueTempTmpBuf.x1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        valueValueTempTmpBuf.x2 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        valueValueTempTmpBuf.x3 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        Ark_Vector1 valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getVectorModifier()->setTestVector1(self, static_cast<Ark_Vector1*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(VectorAttribute_setTestVector1, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_VectorAttribute_setTestVector2(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Vector2 valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.t = static_cast<Ark_Number>(thisDeserializer.readNumber());
        valueValueTempTmpBuf.x = static_cast<Ark_Number>(thisDeserializer.readNumber());
        valueValueTempTmpBuf.y = static_cast<Ark_Number>(thisDeserializer.readNumber());
        valueValueTempTmpBuf.z = static_cast<Ark_Number>(thisDeserializer.readNumber());
        Ark_Vector2 valueValueTemp = valueValueTempTmpBuf;;
        GetNodeModifiers()->getVectorModifier()->setTestVector2(self, static_cast<Ark_Vector2*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(VectorAttribute_setTestVector2, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_VectorAttribute_setTestUnionVector1Number(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_Vector1_Number valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            Ark_Vector1 valueValueTempTmpBufBufU = {};
            valueValueTempTmpBufBufU.x0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
            valueValueTempTmpBufBufU.x1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
            valueValueTempTmpBufBufU.x2 = static_cast<Ark_Number>(thisDeserializer.readNumber());
            valueValueTempTmpBufBufU.x3 = static_cast<Ark_Number>(thisDeserializer.readNumber());
            valueValueTempTmpBuf.value0 = valueValueTempTmpBufBufU;
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_Vector1_Number valueValueTemp = static_cast<Ark_Union_Vector1_Number>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getVectorModifier()->setTestUnionVector1Number(self, static_cast<Ark_Union_Vector1_Number*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(VectorAttribute_setTestUnionVector1Number, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_VectorAttribute_setTestUnionVector2Number(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 valueValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_Vector2_Number valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.selector = valueValueTempTmpBufUnionSelector;
        if (valueValueTempTmpBufUnionSelector == 0) {
            valueValueTempTmpBuf.selector = 0;
            Ark_Vector2 valueValueTempTmpBufBufU = {};
            valueValueTempTmpBufBufU.t = static_cast<Ark_Number>(thisDeserializer.readNumber());
            valueValueTempTmpBufBufU.x = static_cast<Ark_Number>(thisDeserializer.readNumber());
            valueValueTempTmpBufBufU.y = static_cast<Ark_Number>(thisDeserializer.readNumber());
            valueValueTempTmpBufBufU.z = static_cast<Ark_Number>(thisDeserializer.readNumber());
            valueValueTempTmpBuf.value0 = valueValueTempTmpBufBufU;
        } else if (valueValueTempTmpBufUnionSelector == 1) {
            valueValueTempTmpBuf.selector = 1;
            valueValueTempTmpBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_Vector2_Number valueValueTemp = static_cast<Ark_Union_Vector2_Number>(valueValueTempTmpBuf);;
        GetNodeModifiers()->getVectorModifier()->setTestUnionVector2Number(self, static_cast<Ark_Union_Vector2_Number*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(VectorAttribute_setTestUnionVector2Number, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_Web_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getWebModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(Web_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_WebInterface_setWebOptions(Ark_NativePointer thisPtr) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        GetNodeModifiers()->getWebModifier()->setWebOptions(self);
}
KOALA_INTEROP_DIRECT_V1(WebInterface_setWebOptions, Ark_NativePointer)
void impl_WebAttribute_setOnNativeEmbedLifecycleChange(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_NativeEmbedDataInfo_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_NativeEmbedDataInfo event)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_NATIVEEMBEDDATAINFO_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_NativeEmbedDataInfo event)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_NATIVEEMBEDDATAINFO_VOID))))};;
        GetNodeModifiers()->getWebModifier()->setOnNativeEmbedLifecycleChange(self, static_cast<Callback_NativeEmbedDataInfo_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(WebAttribute_setOnNativeEmbedLifecycleChange, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_WebAttribute_setOnRenderExited0(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_OnRenderExitedEvent_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_OnRenderExitedEvent data)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_ONRENDEREXITEDEVENT_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_OnRenderExitedEvent data)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_ONRENDEREXITEDEVENT_VOID))))};;
        GetNodeModifiers()->getWebModifier()->setOnRenderExited0(self, static_cast<Callback_OnRenderExitedEvent_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(WebAttribute_setOnRenderExited0, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_WebAttribute_setOnRenderExited1(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Opt_Literal_Object_detail_Boolean callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Opt_Literal_Object_detail event, const Callback_Boolean_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_OPT_LITERAL_OBJECT_DETAIL_BOOLEAN)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Opt_Literal_Object_detail event, const Callback_Boolean_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_OPT_LITERAL_OBJECT_DETAIL_BOOLEAN))))};;
        GetNodeModifiers()->getWebModifier()->setOnRenderExited1(self, static_cast<Callback_Opt_Literal_Object_detail_Boolean*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(WebAttribute_setOnRenderExited1, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_WebAttribute_setOnHttpErrorReceive(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_OnHttpErrorReceiveEvent_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_OnHttpErrorReceiveEvent data)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_ONHTTPERRORRECEIVEEVENT_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_OnHttpErrorReceiveEvent data)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_ONHTTPERRORRECEIVEEVENT_VOID))))};;
        GetNodeModifiers()->getWebModifier()->setOnHttpErrorReceive(self, static_cast<Callback_OnHttpErrorReceiveEvent_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(WebAttribute_setOnHttpErrorReceive, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_ComponentRoot_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getComponentRootModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(ComponentRoot_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
Ark_NativePointer impl_ConditionScope_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getConditionScopeModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(ConditionScope_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
Ark_NativePointer impl_CustomBuilderRoot_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getCustomBuilderRootModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(CustomBuilderRoot_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
Ark_NativePointer impl_CustomLayoutRoot_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getCustomLayoutRootModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(CustomLayoutRoot_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)
void impl_CustomLayoutRoot_setSubscribeOnMeasureSize(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_onMeasureSize_SizeResult valueValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_GeometryInfo selfLayoutInfo, const Array_Measurable children, const Ark_ConstraintSizeOptions constraint, const Callback_SizeResult_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_ONMEASURESIZE_SIZERESULT)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_GeometryInfo selfLayoutInfo, const Array_Measurable children, const Ark_ConstraintSizeOptions constraint, const Callback_SizeResult_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_ONMEASURESIZE_SIZERESULT))))};;
        GetNodeModifiers()->getCustomLayoutRootModifier()->setSubscribeOnMeasureSize(self, static_cast<Callback_onMeasureSize_SizeResult*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CustomLayoutRoot_setSubscribeOnMeasureSize, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CustomLayoutRoot_setSubscribeOnPlaceChildren(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NodeHandle self = reinterpret_cast<Ark_NodeHandle>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_onPlaceChildren_Void valueValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_GeometryInfo selfLayoutInfo, const Array_Layoutable children, const Ark_ConstraintSizeOptions constraint)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_ONPLACECHILDREN_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_GeometryInfo selfLayoutInfo, const Array_Layoutable children, const Ark_ConstraintSizeOptions constraint)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_ONPLACECHILDREN_VOID))))};;
        GetNodeModifiers()->getCustomLayoutRootModifier()->setSubscribeOnPlaceChildren(self, static_cast<Callback_onPlaceChildren_Void*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CustomLayoutRoot_setSubscribeOnPlaceChildren, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_Root_construct(Ark_Int32 id, Ark_Int32 flags) {
        return GetNodeModifiers()->getRootModifier()->construct(id, flags);
}
KOALA_INTEROP_DIRECT_2(Root_construct, Ark_NativePointer, Ark_Int32, Ark_Int32)

// Accessors

Ark_NativePointer impl_BaseEvent_construct() {
        return GetAccessors()->getBaseEventAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(BaseEvent_construct, Ark_NativePointer)
Ark_NativePointer impl_BaseEvent_getFinalizer() {
        return GetAccessors()->getBaseEventAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(BaseEvent_getFinalizer, Ark_NativePointer)
Ark_Boolean impl_BaseEvent_getModifierKeyState(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int32 keysValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_String keysValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(keysValueTempTmpBuf)>::type,
        std::decay<decltype(*keysValueTempTmpBuf.array)>::type>(&keysValueTempTmpBuf, keysValueTempTmpBufLength);
        for (int keysValueTempTmpBufBufCounterI = 0; keysValueTempTmpBufBufCounterI < keysValueTempTmpBufLength; keysValueTempTmpBufBufCounterI++) {
            keysValueTempTmpBuf.array[keysValueTempTmpBufBufCounterI] = static_cast<Ark_String>(thisDeserializer.readString());
        }
        Array_String keysValueTemp = keysValueTempTmpBuf;;
        return GetAccessors()->getBaseEventAccessor()->getModifierKeyState(self, static_cast<Array_String*>(&keysValueTemp));
}
KOALA_INTEROP_DIRECT_3(BaseEvent_getModifierKeyState, Ark_Boolean, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_Int32 impl_BaseEvent_getSource(Ark_NativePointer thisPtr) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        return GetAccessors()->getBaseEventAccessor()->getSource(self);
}
KOALA_INTEROP_DIRECT_1(BaseEvent_getSource, Ark_Int32, Ark_NativePointer)
void impl_BaseEvent_setSource(Ark_NativePointer thisPtr, Ark_Int32 source) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        GetAccessors()->getBaseEventAccessor()->setSource(self, static_cast<Ark_SourceType>(source));
}
KOALA_INTEROP_DIRECT_V2(BaseEvent_setSource, Ark_NativePointer, Ark_Int32)
KInteropReturnBuffer impl_BaseEvent_getAxisHorizontal(Ark_NativePointer thisPtr) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        const auto &retValue = GetAccessors()->getBaseEventAccessor()->getAxisHorizontal(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeNumber(retValueTmpValue);
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(BaseEvent_getAxisHorizontal, KInteropReturnBuffer, Ark_NativePointer)
void impl_BaseEvent_setAxisHorizontal(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto axisHorizontalValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number axisHorizontalValueTempTmpBuf = {};
        axisHorizontalValueTempTmpBuf.tag = axisHorizontalValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((axisHorizontalValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            axisHorizontalValueTempTmpBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Opt_Number axisHorizontalValueTemp = axisHorizontalValueTempTmpBuf;;
        GetAccessors()->getBaseEventAccessor()->setAxisHorizontal(self, static_cast<Opt_Number*>(&axisHorizontalValueTemp));
}
KOALA_INTEROP_DIRECT_V3(BaseEvent_setAxisHorizontal, Ark_NativePointer, KSerializerBuffer, int32_t)
KInteropReturnBuffer impl_BaseEvent_getAxisVertical(Ark_NativePointer thisPtr) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        const auto &retValue = GetAccessors()->getBaseEventAccessor()->getAxisVertical(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeNumber(retValueTmpValue);
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(BaseEvent_getAxisVertical, KInteropReturnBuffer, Ark_NativePointer)
void impl_BaseEvent_setAxisVertical(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto axisVerticalValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number axisVerticalValueTempTmpBuf = {};
        axisVerticalValueTempTmpBuf.tag = axisVerticalValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((axisVerticalValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            axisVerticalValueTempTmpBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Opt_Number axisVerticalValueTemp = axisVerticalValueTempTmpBuf;;
        GetAccessors()->getBaseEventAccessor()->setAxisVertical(self, static_cast<Opt_Number*>(&axisVerticalValueTemp));
}
KOALA_INTEROP_DIRECT_V3(BaseEvent_setAxisVertical, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_Number impl_BaseEvent_getPressure(Ark_NativePointer thisPtr) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        return GetAccessors()->getBaseEventAccessor()->getPressure(self);
}
KOALA_INTEROP_DIRECT_1(BaseEvent_getPressure, KInteropNumber, Ark_NativePointer)
void impl_BaseEvent_setPressure(Ark_NativePointer thisPtr, KInteropNumber pressure) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        GetAccessors()->getBaseEventAccessor()->setPressure(self, (const Ark_Number*) (&pressure));
}
KOALA_INTEROP_V2(BaseEvent_setPressure, Ark_NativePointer, KInteropNumber)
Ark_Number impl_BaseEvent_getTiltX(Ark_NativePointer thisPtr) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        return GetAccessors()->getBaseEventAccessor()->getTiltX(self);
}
KOALA_INTEROP_DIRECT_1(BaseEvent_getTiltX, KInteropNumber, Ark_NativePointer)
void impl_BaseEvent_setTiltX(Ark_NativePointer thisPtr, KInteropNumber tiltX) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        GetAccessors()->getBaseEventAccessor()->setTiltX(self, (const Ark_Number*) (&tiltX));
}
KOALA_INTEROP_V2(BaseEvent_setTiltX, Ark_NativePointer, KInteropNumber)
Ark_Int32 impl_BaseEvent_getSourceTool(Ark_NativePointer thisPtr) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        return GetAccessors()->getBaseEventAccessor()->getSourceTool(self);
}
KOALA_INTEROP_DIRECT_1(BaseEvent_getSourceTool, Ark_Int32, Ark_NativePointer)
void impl_BaseEvent_setSourceTool(Ark_NativePointer thisPtr, Ark_Int32 sourceTool) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        GetAccessors()->getBaseEventAccessor()->setSourceTool(self, static_cast<Ark_SourceTool>(sourceTool));
}
KOALA_INTEROP_DIRECT_V2(BaseEvent_setSourceTool, Ark_NativePointer, Ark_Int32)
KInteropReturnBuffer impl_BaseEvent_getDeviceId(Ark_NativePointer thisPtr) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        const auto &retValue = GetAccessors()->getBaseEventAccessor()->getDeviceId(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeNumber(retValueTmpValue);
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(BaseEvent_getDeviceId, KInteropReturnBuffer, Ark_NativePointer)
void impl_BaseEvent_setDeviceId(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto deviceIdValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number deviceIdValueTempTmpBuf = {};
        deviceIdValueTempTmpBuf.tag = deviceIdValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((deviceIdValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            deviceIdValueTempTmpBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Opt_Number deviceIdValueTemp = deviceIdValueTempTmpBuf;;
        GetAccessors()->getBaseEventAccessor()->setDeviceId(self, static_cast<Opt_Number*>(&deviceIdValueTemp));
}
KOALA_INTEROP_DIRECT_V3(BaseEvent_setDeviceId, Ark_NativePointer, KSerializerBuffer, int32_t)
KInteropReturnBuffer impl_BaseEvent_getTargetDisplayId(Ark_NativePointer thisPtr) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        const auto &retValue = GetAccessors()->getBaseEventAccessor()->getTargetDisplayId(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeNumber(retValueTmpValue);
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(BaseEvent_getTargetDisplayId, KInteropReturnBuffer, Ark_NativePointer)
void impl_BaseEvent_setTargetDisplayId(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_BaseEvent self = reinterpret_cast<Ark_BaseEvent>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto targetDisplayIdValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number targetDisplayIdValueTempTmpBuf = {};
        targetDisplayIdValueTempTmpBuf.tag = targetDisplayIdValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((targetDisplayIdValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            targetDisplayIdValueTempTmpBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Opt_Number targetDisplayIdValueTemp = targetDisplayIdValueTempTmpBuf;;
        GetAccessors()->getBaseEventAccessor()->setTargetDisplayId(self, static_cast<Opt_Number*>(&targetDisplayIdValueTemp));
}
KOALA_INTEROP_DIRECT_V3(BaseEvent_setTargetDisplayId, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_BaseGestureEvent_construct() {
        return GetAccessors()->getBaseGestureEventAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(BaseGestureEvent_construct, Ark_NativePointer)
Ark_NativePointer impl_BaseGestureEvent_getFinalizer() {
        return GetAccessors()->getBaseGestureEventAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(BaseGestureEvent_getFinalizer, Ark_NativePointer)
KInteropReturnBuffer impl_BaseGestureEvent_getFingerList(Ark_NativePointer thisPtr) {
        Ark_BaseGestureEvent self = reinterpret_cast<Ark_BaseGestureEvent>(thisPtr);
        const auto &retValue = GetAccessors()->getBaseGestureEventAccessor()->getFingerList(self);
        SerializerBase _retSerializer {};
        _retSerializer.writeInt32(retValue.length);
        for (int retValueCounterI = 0; retValueCounterI < retValue.length; retValueCounterI++) {
            const Ark_FingerInfo retValueTmpElement = retValue.array[retValueCounterI];
            FingerInfo_serializer::write(_retSerializer, retValueTmpElement);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(BaseGestureEvent_getFingerList, KInteropReturnBuffer, Ark_NativePointer)
void impl_BaseGestureEvent_setFingerList(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_BaseGestureEvent self = reinterpret_cast<Ark_BaseGestureEvent>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int32 fingerListValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_FingerInfo fingerListValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(fingerListValueTempTmpBuf)>::type,
        std::decay<decltype(*fingerListValueTempTmpBuf.array)>::type>(&fingerListValueTempTmpBuf, fingerListValueTempTmpBufLength);
        for (int fingerListValueTempTmpBufBufCounterI = 0; fingerListValueTempTmpBufBufCounterI < fingerListValueTempTmpBufLength; fingerListValueTempTmpBufBufCounterI++) {
            fingerListValueTempTmpBuf.array[fingerListValueTempTmpBufBufCounterI] = FingerInfo_serializer::read(thisDeserializer);
        }
        Array_FingerInfo fingerListValueTemp = fingerListValueTempTmpBuf;;
        GetAccessors()->getBaseGestureEventAccessor()->setFingerList(self, static_cast<Array_FingerInfo*>(&fingerListValueTemp));
}
KOALA_INTEROP_DIRECT_V3(BaseGestureEvent_setFingerList, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_CanvasGradient_construct() {
        return GetAccessors()->getCanvasGradientAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(CanvasGradient_construct, Ark_NativePointer)
Ark_NativePointer impl_CanvasGradient_getFinalizer() {
        return GetAccessors()->getCanvasGradientAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(CanvasGradient_getFinalizer, Ark_NativePointer)
void impl_CanvasGradient_addColorStop(Ark_NativePointer thisPtr, KInteropNumber offset, const KStringPtr& color) {
        Ark_CanvasGradient self = reinterpret_cast<Ark_CanvasGradient>(thisPtr);
        GetAccessors()->getCanvasGradientAccessor()->addColorStop(self, (const Ark_Number*) (&offset), (const Ark_String*) (&color));
}
KOALA_INTEROP_V3(CanvasGradient_addColorStop, Ark_NativePointer, KInteropNumber, KStringPtr)
Ark_NativePointer impl_CanvasPath_construct() {
        return GetAccessors()->getCanvasPathAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(CanvasPath_construct, Ark_NativePointer)
Ark_NativePointer impl_CanvasPath_getFinalizer() {
        return GetAccessors()->getCanvasPathAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(CanvasPath_getFinalizer, Ark_NativePointer)
void impl_CanvasPath_rect(Ark_NativePointer thisPtr, KInteropNumber x, KInteropNumber y, KInteropNumber w, KInteropNumber h) {
        Ark_CanvasPath self = reinterpret_cast<Ark_CanvasPath>(thisPtr);
        GetAccessors()->getCanvasPathAccessor()->rect(self, (const Ark_Number*) (&x), (const Ark_Number*) (&y), (const Ark_Number*) (&w), (const Ark_Number*) (&h));
}
KOALA_INTEROP_V5(CanvasPath_rect, Ark_NativePointer, KInteropNumber, KInteropNumber, KInteropNumber, KInteropNumber)
void impl_CanvasPath_arc(Ark_NativePointer thisPtr, KInteropNumber x, KInteropNumber y, KInteropNumber radius, KInteropNumber startAngle, KInteropNumber endAngle, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_CanvasPath self = reinterpret_cast<Ark_CanvasPath>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto counterclockwiseValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Boolean counterclockwiseValueTempTmpBuf = {};
        counterclockwiseValueTempTmpBuf.tag = counterclockwiseValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((counterclockwiseValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            counterclockwiseValueTempTmpBuf.value = thisDeserializer.readBoolean();
        }
        Opt_Boolean counterclockwiseValueTemp = counterclockwiseValueTempTmpBuf;;
        GetAccessors()->getCanvasPathAccessor()->arc(self, (const Ark_Number*) (&x), (const Ark_Number*) (&y), (const Ark_Number*) (&radius), (const Ark_Number*) (&startAngle), (const Ark_Number*) (&endAngle), static_cast<Opt_Boolean*>(&counterclockwiseValueTemp));
}
KOALA_INTEROP_V8(CanvasPath_arc, Ark_NativePointer, KInteropNumber, KInteropNumber, KInteropNumber, KInteropNumber, KInteropNumber, KSerializerBuffer, int32_t)
void impl_CanvasPath_closePath(Ark_NativePointer thisPtr) {
        Ark_CanvasPath self = reinterpret_cast<Ark_CanvasPath>(thisPtr);
        GetAccessors()->getCanvasPathAccessor()->closePath(self);
}
KOALA_INTEROP_DIRECT_V1(CanvasPath_closePath, Ark_NativePointer)
Ark_NativePointer impl_CanvasPattern_construct() {
        return GetAccessors()->getCanvasPatternAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(CanvasPattern_construct, Ark_NativePointer)
Ark_NativePointer impl_CanvasPattern_getFinalizer() {
        return GetAccessors()->getCanvasPatternAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(CanvasPattern_getFinalizer, Ark_NativePointer)
void impl_CanvasPattern_setTransform(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_CanvasPattern self = reinterpret_cast<Ark_CanvasPattern>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto transformValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Matrix2D transformValueTempTmpBuf = {};
        transformValueTempTmpBuf.tag = transformValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((transformValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            transformValueTempTmpBuf.value = static_cast<Ark_Matrix2D>(Matrix2D_serializer::read(thisDeserializer));
        }
        Opt_Matrix2D transformValueTemp = transformValueTempTmpBuf;;
        GetAccessors()->getCanvasPatternAccessor()->setTransform(self, static_cast<Opt_Matrix2D*>(&transformValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CanvasPattern_setTransform, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_CanvasRenderer_construct() {
        return GetAccessors()->getCanvasRendererAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(CanvasRenderer_construct, Ark_NativePointer)
Ark_NativePointer impl_CanvasRenderer_getFinalizer() {
        return GetAccessors()->getCanvasRendererAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(CanvasRenderer_getFinalizer, Ark_NativePointer)
void impl_CanvasRenderer_beginPath(Ark_NativePointer thisPtr) {
        Ark_CanvasRenderer self = reinterpret_cast<Ark_CanvasRenderer>(thisPtr);
        GetAccessors()->getCanvasRendererAccessor()->beginPath(self);
}
KOALA_INTEROP_DIRECT_V1(CanvasRenderer_beginPath, Ark_NativePointer)
void impl_CanvasRenderer_clip(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_CanvasRenderer self = reinterpret_cast<Ark_CanvasRenderer>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto fillRuleValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_String fillRuleValueTempTmpBuf = {};
        fillRuleValueTempTmpBuf.tag = fillRuleValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((fillRuleValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            fillRuleValueTempTmpBuf.value = static_cast<Ark_String>(thisDeserializer.readString());
        }
        Opt_String fillRuleValueTemp = fillRuleValueTempTmpBuf;;
        GetAccessors()->getCanvasRendererAccessor()->clip(self, static_cast<Opt_String*>(&fillRuleValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CanvasRenderer_clip, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CanvasRenderer_reset(Ark_NativePointer thisPtr) {
        Ark_CanvasRenderer self = reinterpret_cast<Ark_CanvasRenderer>(thisPtr);
        GetAccessors()->getCanvasRendererAccessor()->reset(self);
}
KOALA_INTEROP_DIRECT_V1(CanvasRenderer_reset, Ark_NativePointer)
void impl_CanvasRenderer_putImageData0(Ark_NativePointer thisPtr, Ark_NativePointer imagedata, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_CanvasRenderer self = reinterpret_cast<Ark_CanvasRenderer>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 dxValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_Number_String dxValueTempTmpBuf = {};
        dxValueTempTmpBuf.selector = dxValueTempTmpBufUnionSelector;
        if (dxValueTempTmpBufUnionSelector == 0) {
            dxValueTempTmpBuf.selector = 0;
            dxValueTempTmpBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (dxValueTempTmpBufUnionSelector == 1) {
            dxValueTempTmpBuf.selector = 1;
            dxValueTempTmpBuf.value1 = static_cast<Ark_String>(thisDeserializer.readString());
        } else {
            INTEROP_FATAL("One of the branches for dxValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_Number_String dxValueTemp = static_cast<Ark_Union_Number_String>(dxValueTempTmpBuf);;
        const Ark_Int8 dyValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_Number_String dyValueTempTmpBuf = {};
        dyValueTempTmpBuf.selector = dyValueTempTmpBufUnionSelector;
        if (dyValueTempTmpBufUnionSelector == 0) {
            dyValueTempTmpBuf.selector = 0;
            dyValueTempTmpBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (dyValueTempTmpBufUnionSelector == 1) {
            dyValueTempTmpBuf.selector = 1;
            dyValueTempTmpBuf.value1 = static_cast<Ark_String>(thisDeserializer.readString());
        } else {
            INTEROP_FATAL("One of the branches for dyValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_Number_String dyValueTemp = static_cast<Ark_Union_Number_String>(dyValueTempTmpBuf);;
        GetAccessors()->getCanvasRendererAccessor()->putImageData0(self, static_cast<Ark_ImageData>(imagedata), static_cast<Ark_Union_Number_String*>(&dxValueTemp), static_cast<Ark_Union_Number_String*>(&dyValueTemp));
}
KOALA_INTEROP_DIRECT_V4(CanvasRenderer_putImageData0, Ark_NativePointer, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_CanvasRenderer_putImageData1(Ark_NativePointer thisPtr, Ark_NativePointer imagedata, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_CanvasRenderer self = reinterpret_cast<Ark_CanvasRenderer>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 dxValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_Number_String dxValueTempTmpBuf = {};
        dxValueTempTmpBuf.selector = dxValueTempTmpBufUnionSelector;
        if (dxValueTempTmpBufUnionSelector == 0) {
            dxValueTempTmpBuf.selector = 0;
            dxValueTempTmpBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (dxValueTempTmpBufUnionSelector == 1) {
            dxValueTempTmpBuf.selector = 1;
            dxValueTempTmpBuf.value1 = static_cast<Ark_String>(thisDeserializer.readString());
        } else {
            INTEROP_FATAL("One of the branches for dxValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_Number_String dxValueTemp = static_cast<Ark_Union_Number_String>(dxValueTempTmpBuf);;
        const Ark_Int8 dyValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_Number_String dyValueTempTmpBuf = {};
        dyValueTempTmpBuf.selector = dyValueTempTmpBufUnionSelector;
        if (dyValueTempTmpBufUnionSelector == 0) {
            dyValueTempTmpBuf.selector = 0;
            dyValueTempTmpBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (dyValueTempTmpBufUnionSelector == 1) {
            dyValueTempTmpBuf.selector = 1;
            dyValueTempTmpBuf.value1 = static_cast<Ark_String>(thisDeserializer.readString());
        } else {
            INTEROP_FATAL("One of the branches for dyValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_Number_String dyValueTemp = static_cast<Ark_Union_Number_String>(dyValueTempTmpBuf);;
        const Ark_Int8 dirtyXValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_Number_String dirtyXValueTempTmpBuf = {};
        dirtyXValueTempTmpBuf.selector = dirtyXValueTempTmpBufUnionSelector;
        if (dirtyXValueTempTmpBufUnionSelector == 0) {
            dirtyXValueTempTmpBuf.selector = 0;
            dirtyXValueTempTmpBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (dirtyXValueTempTmpBufUnionSelector == 1) {
            dirtyXValueTempTmpBuf.selector = 1;
            dirtyXValueTempTmpBuf.value1 = static_cast<Ark_String>(thisDeserializer.readString());
        } else {
            INTEROP_FATAL("One of the branches for dirtyXValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_Number_String dirtyXValueTemp = static_cast<Ark_Union_Number_String>(dirtyXValueTempTmpBuf);;
        const Ark_Int8 dirtyYValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_Number_String dirtyYValueTempTmpBuf = {};
        dirtyYValueTempTmpBuf.selector = dirtyYValueTempTmpBufUnionSelector;
        if (dirtyYValueTempTmpBufUnionSelector == 0) {
            dirtyYValueTempTmpBuf.selector = 0;
            dirtyYValueTempTmpBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (dirtyYValueTempTmpBufUnionSelector == 1) {
            dirtyYValueTempTmpBuf.selector = 1;
            dirtyYValueTempTmpBuf.value1 = static_cast<Ark_String>(thisDeserializer.readString());
        } else {
            INTEROP_FATAL("One of the branches for dirtyYValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_Number_String dirtyYValueTemp = static_cast<Ark_Union_Number_String>(dirtyYValueTempTmpBuf);;
        const Ark_Int8 dirtyWidthValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_Number_String dirtyWidthValueTempTmpBuf = {};
        dirtyWidthValueTempTmpBuf.selector = dirtyWidthValueTempTmpBufUnionSelector;
        if (dirtyWidthValueTempTmpBufUnionSelector == 0) {
            dirtyWidthValueTempTmpBuf.selector = 0;
            dirtyWidthValueTempTmpBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (dirtyWidthValueTempTmpBufUnionSelector == 1) {
            dirtyWidthValueTempTmpBuf.selector = 1;
            dirtyWidthValueTempTmpBuf.value1 = static_cast<Ark_String>(thisDeserializer.readString());
        } else {
            INTEROP_FATAL("One of the branches for dirtyWidthValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_Number_String dirtyWidthValueTemp = static_cast<Ark_Union_Number_String>(dirtyWidthValueTempTmpBuf);;
        const Ark_Int8 dirtyHeightValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_Number_String dirtyHeightValueTempTmpBuf = {};
        dirtyHeightValueTempTmpBuf.selector = dirtyHeightValueTempTmpBufUnionSelector;
        if (dirtyHeightValueTempTmpBufUnionSelector == 0) {
            dirtyHeightValueTempTmpBuf.selector = 0;
            dirtyHeightValueTempTmpBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (dirtyHeightValueTempTmpBufUnionSelector == 1) {
            dirtyHeightValueTempTmpBuf.selector = 1;
            dirtyHeightValueTempTmpBuf.value1 = static_cast<Ark_String>(thisDeserializer.readString());
        } else {
            INTEROP_FATAL("One of the branches for dirtyHeightValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_Number_String dirtyHeightValueTemp = static_cast<Ark_Union_Number_String>(dirtyHeightValueTempTmpBuf);;
        GetAccessors()->getCanvasRendererAccessor()->putImageData1(self, static_cast<Ark_ImageData>(imagedata), static_cast<Ark_Union_Number_String*>(&dxValueTemp), static_cast<Ark_Union_Number_String*>(&dyValueTemp), static_cast<Ark_Union_Number_String*>(&dirtyXValueTemp), static_cast<Ark_Union_Number_String*>(&dirtyYValueTemp), static_cast<Ark_Union_Number_String*>(&dirtyWidthValueTemp), static_cast<Ark_Union_Number_String*>(&dirtyHeightValueTemp));
}
KOALA_INTEROP_DIRECT_V4(CanvasRenderer_putImageData1, Ark_NativePointer, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_Number impl_CanvasRenderer_getGlobalAlpha(Ark_NativePointer thisPtr) {
        Ark_CanvasRenderer self = reinterpret_cast<Ark_CanvasRenderer>(thisPtr);
        return GetAccessors()->getCanvasRendererAccessor()->getGlobalAlpha(self);
}
KOALA_INTEROP_DIRECT_1(CanvasRenderer_getGlobalAlpha, KInteropNumber, Ark_NativePointer)
void impl_CanvasRenderer_setGlobalAlpha(Ark_NativePointer thisPtr, KInteropNumber globalAlpha) {
        Ark_CanvasRenderer self = reinterpret_cast<Ark_CanvasRenderer>(thisPtr);
        GetAccessors()->getCanvasRendererAccessor()->setGlobalAlpha(self, (const Ark_Number*) (&globalAlpha));
}
KOALA_INTEROP_V2(CanvasRenderer_setGlobalAlpha, Ark_NativePointer, KInteropNumber)
Ark_String impl_CanvasRenderer_getGlobalCompositeOperation(Ark_NativePointer thisPtr) {
        Ark_CanvasRenderer self = reinterpret_cast<Ark_CanvasRenderer>(thisPtr);
        return GetAccessors()->getCanvasRendererAccessor()->getGlobalCompositeOperation(self);
}
KOALA_INTEROP_1(CanvasRenderer_getGlobalCompositeOperation, KStringPtr, Ark_NativePointer)
void impl_CanvasRenderer_setGlobalCompositeOperation(Ark_NativePointer thisPtr, const KStringPtr& globalCompositeOperation) {
        Ark_CanvasRenderer self = reinterpret_cast<Ark_CanvasRenderer>(thisPtr);
        GetAccessors()->getCanvasRendererAccessor()->setGlobalCompositeOperation(self, (const Ark_String*) (&globalCompositeOperation));
}
KOALA_INTEROP_V2(CanvasRenderer_setGlobalCompositeOperation, Ark_NativePointer, KStringPtr)
KInteropReturnBuffer impl_CanvasRenderer_getFillStyle(Ark_NativePointer thisPtr) {
        Ark_CanvasRenderer self = reinterpret_cast<Ark_CanvasRenderer>(thisPtr);
        const auto &retValue = GetAccessors()->getCanvasRendererAccessor()->getFillStyle(self);
        SerializerBase _retSerializer {};
        if (retValue.selector == 0) {
            _retSerializer.writeInt8(0);
            const auto retValueForIdx0 = retValue.value0;
            _retSerializer.writeString(retValueForIdx0);
        } else if (retValue.selector == 1) {
            _retSerializer.writeInt8(1);
            const auto retValueForIdx1 = retValue.value1;
            _retSerializer.writeNumber(retValueForIdx1);
        } else if (retValue.selector == 2) {
            _retSerializer.writeInt8(2);
            const auto retValueForIdx2 = retValue.value2;
            CanvasGradient_serializer::write(_retSerializer, retValueForIdx2);
        } else if (retValue.selector == 3) {
            _retSerializer.writeInt8(3);
            const auto retValueForIdx3 = retValue.value3;
            CanvasPattern_serializer::write(_retSerializer, retValueForIdx3);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(CanvasRenderer_getFillStyle, KInteropReturnBuffer, Ark_NativePointer)
void impl_CanvasRenderer_setFillStyle(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_CanvasRenderer self = reinterpret_cast<Ark_CanvasRenderer>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 fillStyleValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_String_Number_CanvasGradient_CanvasPattern fillStyleValueTempTmpBuf = {};
        fillStyleValueTempTmpBuf.selector = fillStyleValueTempTmpBufUnionSelector;
        if (fillStyleValueTempTmpBufUnionSelector == 0) {
            fillStyleValueTempTmpBuf.selector = 0;
            fillStyleValueTempTmpBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (fillStyleValueTempTmpBufUnionSelector == 1) {
            fillStyleValueTempTmpBuf.selector = 1;
            fillStyleValueTempTmpBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (fillStyleValueTempTmpBufUnionSelector == 2) {
            fillStyleValueTempTmpBuf.selector = 2;
            fillStyleValueTempTmpBuf.value2 = static_cast<Ark_CanvasGradient>(CanvasGradient_serializer::read(thisDeserializer));
        } else if (fillStyleValueTempTmpBufUnionSelector == 3) {
            fillStyleValueTempTmpBuf.selector = 3;
            fillStyleValueTempTmpBuf.value3 = static_cast<Ark_CanvasPattern>(CanvasPattern_serializer::read(thisDeserializer));
        } else {
            INTEROP_FATAL("One of the branches for fillStyleValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_String_Number_CanvasGradient_CanvasPattern fillStyleValueTemp = static_cast<Ark_Union_String_Number_CanvasGradient_CanvasPattern>(fillStyleValueTempTmpBuf);;
        GetAccessors()->getCanvasRendererAccessor()->setFillStyle(self, static_cast<Ark_Union_String_Number_CanvasGradient_CanvasPattern*>(&fillStyleValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CanvasRenderer_setFillStyle, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_CanvasRenderingContext2D_construct(KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto settingsValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_RenderingContextSettings settingsValueTempTmpBuf = {};
        settingsValueTempTmpBuf.tag = settingsValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((settingsValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            settingsValueTempTmpBuf.value = static_cast<Ark_RenderingContextSettings>(RenderingContextSettings_serializer::read(thisDeserializer));
        }
        Opt_RenderingContextSettings settingsValueTemp = settingsValueTempTmpBuf;;
        const auto unitValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_LengthMetricsUnit unitValueTempTmpBuf = {};
        unitValueTempTmpBuf.tag = unitValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((unitValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            unitValueTempTmpBuf.value = static_cast<Ark_LengthMetricsUnit>(thisDeserializer.readInt32());
        }
        Opt_LengthMetricsUnit unitValueTemp = unitValueTempTmpBuf;;
        return GetAccessors()->getCanvasRenderingContext2DAccessor()->construct(static_cast<Opt_RenderingContextSettings*>(&settingsValueTemp), static_cast<Opt_LengthMetricsUnit*>(&unitValueTemp));
}
KOALA_INTEROP_DIRECT_2(CanvasRenderingContext2D_construct, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_CanvasRenderingContext2D_getFinalizer() {
        return GetAccessors()->getCanvasRenderingContext2DAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(CanvasRenderingContext2D_getFinalizer, Ark_NativePointer)
void impl_CanvasRenderingContext2D_stopImageAnalyzer(Ark_NativePointer thisPtr) {
        Ark_CanvasRenderingContext2D self = reinterpret_cast<Ark_CanvasRenderingContext2D>(thisPtr);
        GetAccessors()->getCanvasRenderingContext2DAccessor()->stopImageAnalyzer(self);
}
KOALA_INTEROP_DIRECT_V1(CanvasRenderingContext2D_stopImageAnalyzer, Ark_NativePointer)
Ark_NativePointer impl_CanvasRenderingContext2D_of() {
        return GetAccessors()->getCanvasRenderingContext2DAccessor()->of();
}
KOALA_INTEROP_DIRECT_0(CanvasRenderingContext2D_of, Ark_NativePointer)
Ark_Int32 impl_CanvasRenderingContext2D_getHeight(Ark_NativePointer thisPtr) {
        Ark_CanvasRenderingContext2D self = reinterpret_cast<Ark_CanvasRenderingContext2D>(thisPtr);
        return GetAccessors()->getCanvasRenderingContext2DAccessor()->getHeight(self);
}
KOALA_INTEROP_1(CanvasRenderingContext2D_getHeight, Ark_Int32, Ark_NativePointer)
Ark_Int32 impl_CanvasRenderingContext2D_getWidth(Ark_NativePointer thisPtr) {
        Ark_CanvasRenderingContext2D self = reinterpret_cast<Ark_CanvasRenderingContext2D>(thisPtr);
        return GetAccessors()->getCanvasRenderingContext2DAccessor()->getWidth(self);
}
KOALA_INTEROP_1(CanvasRenderingContext2D_getWidth, Ark_Int32, Ark_NativePointer)
void impl_ClassNoConstructorAndStaticMethodsDTS_method(KInteropNumber valNumber, const KStringPtr& valString) {
        GetAccessors()->getClassNoConstructorAndStaticMethodsDTSAccessor()->method((const Ark_Number*) (&valNumber), (const Ark_String*) (&valString));
}
KOALA_INTEROP_V2(ClassNoConstructorAndStaticMethodsDTS_method, KInteropNumber, KStringPtr)
void impl_ClassNoConstructorAndStaticMethodsDTS_method2(KInteropNumber valNumber, const KStringPtr& valString) {
        GetAccessors()->getClassNoConstructorAndStaticMethodsDTSAccessor()->method2((const Ark_Number*) (&valNumber), (const Ark_String*) (&valString));
}
KOALA_INTEROP_V2(ClassNoConstructorAndStaticMethodsDTS_method2, KInteropNumber, KStringPtr)
Ark_NativePointer impl_ClassWithConstructorAndAllOptionalParamsDTS_construct(KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valNumberValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number valNumberValueTempTmpBuf = {};
        valNumberValueTempTmpBuf.tag = valNumberValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valNumberValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valNumberValueTempTmpBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Opt_Number valNumberValueTemp = valNumberValueTempTmpBuf;;
        const auto valStringValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_String valStringValueTempTmpBuf = {};
        valStringValueTempTmpBuf.tag = valStringValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valStringValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valStringValueTempTmpBuf.value = static_cast<Ark_String>(thisDeserializer.readString());
        }
        Opt_String valStringValueTemp = valStringValueTempTmpBuf;;
        return GetAccessors()->getClassWithConstructorAndAllOptionalParamsDTSAccessor()->construct(static_cast<Opt_Number*>(&valNumberValueTemp), static_cast<Opt_String*>(&valStringValueTemp));
}
KOALA_INTEROP_DIRECT_2(ClassWithConstructorAndAllOptionalParamsDTS_construct, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_ClassWithConstructorAndAllOptionalParamsDTS_getFinalizer() {
        return GetAccessors()->getClassWithConstructorAndAllOptionalParamsDTSAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(ClassWithConstructorAndAllOptionalParamsDTS_getFinalizer, Ark_NativePointer)
Ark_NativePointer impl_ClassWithConstructorAndAllOptionalParamsDTS_of(KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valNumberValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number valNumberValueTempTmpBuf = {};
        valNumberValueTempTmpBuf.tag = valNumberValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valNumberValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valNumberValueTempTmpBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Opt_Number valNumberValueTemp = valNumberValueTempTmpBuf;;
        const auto valStringValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_String valStringValueTempTmpBuf = {};
        valStringValueTempTmpBuf.tag = valStringValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valStringValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valStringValueTempTmpBuf.value = static_cast<Ark_String>(thisDeserializer.readString());
        }
        Opt_String valStringValueTemp = valStringValueTempTmpBuf;;
        return GetAccessors()->getClassWithConstructorAndAllOptionalParamsDTSAccessor()->of(static_cast<Opt_Number*>(&valNumberValueTemp), static_cast<Opt_String*>(&valStringValueTemp));
}
KOALA_INTEROP_DIRECT_2(ClassWithConstructorAndAllOptionalParamsDTS_of, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_ClassWithConstructorAndAllOptionalParamsDTS_method(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_ClassWithConstructorAndAllOptionalParamsDTS self = reinterpret_cast<Ark_ClassWithConstructorAndAllOptionalParamsDTS>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valBooleanValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Boolean valBooleanValueTempTmpBuf = {};
        valBooleanValueTempTmpBuf.tag = valBooleanValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valBooleanValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valBooleanValueTempTmpBuf.value = thisDeserializer.readBoolean();
        }
        Opt_Boolean valBooleanValueTemp = valBooleanValueTempTmpBuf;;
        const auto valStringValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_String valStringValueTempTmpBuf = {};
        valStringValueTempTmpBuf.tag = valStringValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valStringValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valStringValueTempTmpBuf.value = static_cast<Ark_String>(thisDeserializer.readString());
        }
        Opt_String valStringValueTemp = valStringValueTempTmpBuf;;
        GetAccessors()->getClassWithConstructorAndAllOptionalParamsDTSAccessor()->method(self, static_cast<Opt_Boolean*>(&valBooleanValueTemp), static_cast<Opt_String*>(&valStringValueTemp));
}
KOALA_INTEROP_DIRECT_V3(ClassWithConstructorAndAllOptionalParamsDTS_method, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_ClassWithConstructorAndFieldsAndMethodsDTS_construct(KInteropNumber valNumber, Ark_Boolean valBoolean) {
        return GetAccessors()->getClassWithConstructorAndFieldsAndMethodsDTSAccessor()->construct((const Ark_Number*) (&valNumber), valBoolean);
}
KOALA_INTEROP_2(ClassWithConstructorAndFieldsAndMethodsDTS_construct, Ark_NativePointer, KInteropNumber, Ark_Boolean)
Ark_NativePointer impl_ClassWithConstructorAndFieldsAndMethodsDTS_getFinalizer() {
        return GetAccessors()->getClassWithConstructorAndFieldsAndMethodsDTSAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(ClassWithConstructorAndFieldsAndMethodsDTS_getFinalizer, Ark_NativePointer)
void impl_ClassWithConstructorAndFieldsAndMethodsDTS_method(Ark_NativePointer thisPtr, KInteropNumber valNumber, const KStringPtr& valString) {
        Ark_ClassWithConstructorAndFieldsAndMethodsDTS self = reinterpret_cast<Ark_ClassWithConstructorAndFieldsAndMethodsDTS>(thisPtr);
        GetAccessors()->getClassWithConstructorAndFieldsAndMethodsDTSAccessor()->method(self, (const Ark_Number*) (&valNumber), (const Ark_String*) (&valString));
}
KOALA_INTEROP_V3(ClassWithConstructorAndFieldsAndMethodsDTS_method, Ark_NativePointer, KInteropNumber, KStringPtr)
Ark_Number impl_ClassWithConstructorAndFieldsAndMethodsDTS_getValNumber(Ark_NativePointer thisPtr) {
        Ark_ClassWithConstructorAndFieldsAndMethodsDTS self = reinterpret_cast<Ark_ClassWithConstructorAndFieldsAndMethodsDTS>(thisPtr);
        return GetAccessors()->getClassWithConstructorAndFieldsAndMethodsDTSAccessor()->getValNumber(self);
}
KOALA_INTEROP_DIRECT_1(ClassWithConstructorAndFieldsAndMethodsDTS_getValNumber, KInteropNumber, Ark_NativePointer)
void impl_ClassWithConstructorAndFieldsAndMethodsDTS_setValNumber(Ark_NativePointer thisPtr, KInteropNumber valNumber) {
        Ark_ClassWithConstructorAndFieldsAndMethodsDTS self = reinterpret_cast<Ark_ClassWithConstructorAndFieldsAndMethodsDTS>(thisPtr);
        GetAccessors()->getClassWithConstructorAndFieldsAndMethodsDTSAccessor()->setValNumber(self, (const Ark_Number*) (&valNumber));
}
KOALA_INTEROP_V2(ClassWithConstructorAndFieldsAndMethodsDTS_setValNumber, Ark_NativePointer, KInteropNumber)
Ark_Boolean impl_ClassWithConstructorAndFieldsAndMethodsDTS_getValBoolean(Ark_NativePointer thisPtr) {
        Ark_ClassWithConstructorAndFieldsAndMethodsDTS self = reinterpret_cast<Ark_ClassWithConstructorAndFieldsAndMethodsDTS>(thisPtr);
        return GetAccessors()->getClassWithConstructorAndFieldsAndMethodsDTSAccessor()->getValBoolean(self);
}
KOALA_INTEROP_DIRECT_1(ClassWithConstructorAndFieldsAndMethodsDTS_getValBoolean, Ark_Boolean, Ark_NativePointer)
void impl_ClassWithConstructorAndFieldsAndMethodsDTS_setValBoolean(Ark_NativePointer thisPtr, Ark_Boolean valBoolean) {
        Ark_ClassWithConstructorAndFieldsAndMethodsDTS self = reinterpret_cast<Ark_ClassWithConstructorAndFieldsAndMethodsDTS>(thisPtr);
        GetAccessors()->getClassWithConstructorAndFieldsAndMethodsDTSAccessor()->setValBoolean(self, valBoolean);
}
KOALA_INTEROP_DIRECT_V2(ClassWithConstructorAndFieldsAndMethodsDTS_setValBoolean, Ark_NativePointer, Ark_Boolean)
Ark_NativePointer impl_ClassWithConstructorAndFieldsDTS_construct(KInteropNumber valNumber, Ark_Boolean valBoolean) {
        return GetAccessors()->getClassWithConstructorAndFieldsDTSAccessor()->construct((const Ark_Number*) (&valNumber), valBoolean);
}
KOALA_INTEROP_2(ClassWithConstructorAndFieldsDTS_construct, Ark_NativePointer, KInteropNumber, Ark_Boolean)
Ark_NativePointer impl_ClassWithConstructorAndFieldsDTS_getFinalizer() {
        return GetAccessors()->getClassWithConstructorAndFieldsDTSAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(ClassWithConstructorAndFieldsDTS_getFinalizer, Ark_NativePointer)
Ark_Number impl_ClassWithConstructorAndFieldsDTS_getValNumber(Ark_NativePointer thisPtr) {
        Ark_ClassWithConstructorAndFieldsDTS self = reinterpret_cast<Ark_ClassWithConstructorAndFieldsDTS>(thisPtr);
        return GetAccessors()->getClassWithConstructorAndFieldsDTSAccessor()->getValNumber(self);
}
KOALA_INTEROP_DIRECT_1(ClassWithConstructorAndFieldsDTS_getValNumber, KInteropNumber, Ark_NativePointer)
void impl_ClassWithConstructorAndFieldsDTS_setValNumber(Ark_NativePointer thisPtr, KInteropNumber valNumber) {
        Ark_ClassWithConstructorAndFieldsDTS self = reinterpret_cast<Ark_ClassWithConstructorAndFieldsDTS>(thisPtr);
        GetAccessors()->getClassWithConstructorAndFieldsDTSAccessor()->setValNumber(self, (const Ark_Number*) (&valNumber));
}
KOALA_INTEROP_V2(ClassWithConstructorAndFieldsDTS_setValNumber, Ark_NativePointer, KInteropNumber)
Ark_Boolean impl_ClassWithConstructorAndFieldsDTS_getValBoolean(Ark_NativePointer thisPtr) {
        Ark_ClassWithConstructorAndFieldsDTS self = reinterpret_cast<Ark_ClassWithConstructorAndFieldsDTS>(thisPtr);
        return GetAccessors()->getClassWithConstructorAndFieldsDTSAccessor()->getValBoolean(self);
}
KOALA_INTEROP_DIRECT_1(ClassWithConstructorAndFieldsDTS_getValBoolean, Ark_Boolean, Ark_NativePointer)
void impl_ClassWithConstructorAndFieldsDTS_setValBoolean(Ark_NativePointer thisPtr, Ark_Boolean valBoolean) {
        Ark_ClassWithConstructorAndFieldsDTS self = reinterpret_cast<Ark_ClassWithConstructorAndFieldsDTS>(thisPtr);
        GetAccessors()->getClassWithConstructorAndFieldsDTSAccessor()->setValBoolean(self, valBoolean);
}
KOALA_INTEROP_DIRECT_V2(ClassWithConstructorAndFieldsDTS_setValBoolean, Ark_NativePointer, Ark_Boolean)
Ark_NativePointer impl_ClassWithConstructorAndMethodsDTS_construct(KInteropNumber valNumber, const KStringPtr& valString) {
        return GetAccessors()->getClassWithConstructorAndMethodsDTSAccessor()->construct((const Ark_Number*) (&valNumber), (const Ark_String*) (&valString));
}
KOALA_INTEROP_2(ClassWithConstructorAndMethodsDTS_construct, Ark_NativePointer, KInteropNumber, KStringPtr)
Ark_NativePointer impl_ClassWithConstructorAndMethodsDTS_getFinalizer() {
        return GetAccessors()->getClassWithConstructorAndMethodsDTSAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(ClassWithConstructorAndMethodsDTS_getFinalizer, Ark_NativePointer)
void impl_ClassWithConstructorAndMethodsDTS_method(Ark_NativePointer thisPtr, KInteropNumber valNumber, const KStringPtr& valString) {
        Ark_ClassWithConstructorAndMethodsDTS self = reinterpret_cast<Ark_ClassWithConstructorAndMethodsDTS>(thisPtr);
        GetAccessors()->getClassWithConstructorAndMethodsDTSAccessor()->method(self, (const Ark_Number*) (&valNumber), (const Ark_String*) (&valString));
}
KOALA_INTEROP_V3(ClassWithConstructorAndMethodsDTS_method, Ark_NativePointer, KInteropNumber, KStringPtr)
Ark_NativePointer impl_ClassWithConstructorAndNonOptionalParamsDTS_construct(KInteropNumber valNumber, const KStringPtr& valString) {
        return GetAccessors()->getClassWithConstructorAndNonOptionalParamsDTSAccessor()->construct((const Ark_Number*) (&valNumber), (const Ark_String*) (&valString));
}
KOALA_INTEROP_2(ClassWithConstructorAndNonOptionalParamsDTS_construct, Ark_NativePointer, KInteropNumber, KStringPtr)
Ark_NativePointer impl_ClassWithConstructorAndNonOptionalParamsDTS_getFinalizer() {
        return GetAccessors()->getClassWithConstructorAndNonOptionalParamsDTSAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(ClassWithConstructorAndNonOptionalParamsDTS_getFinalizer, Ark_NativePointer)
Ark_NativePointer impl_ClassWithConstructorAndNonOptionalParamsDTS_of(KInteropNumber valNumber, const KStringPtr& valString) {
        return GetAccessors()->getClassWithConstructorAndNonOptionalParamsDTSAccessor()->of((const Ark_Number*) (&valNumber), (const Ark_String*) (&valString));
}
KOALA_INTEROP_2(ClassWithConstructorAndNonOptionalParamsDTS_of, Ark_NativePointer, KInteropNumber, KStringPtr)
void impl_ClassWithConstructorAndNonOptionalParamsDTS_method(Ark_NativePointer thisPtr, Ark_Boolean valBoolean, const KStringPtr& valString) {
        Ark_ClassWithConstructorAndNonOptionalParamsDTS self = reinterpret_cast<Ark_ClassWithConstructorAndNonOptionalParamsDTS>(thisPtr);
        GetAccessors()->getClassWithConstructorAndNonOptionalParamsDTSAccessor()->method(self, valBoolean, (const Ark_String*) (&valString));
}
KOALA_INTEROP_V3(ClassWithConstructorAndNonOptionalParamsDTS_method, Ark_NativePointer, Ark_Boolean, KStringPtr)
Ark_NativePointer impl_ClassWithConstructorAndSomeOptionalParamsDTS_construct(KInteropNumber valNumber, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valStringValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_String valStringValueTempTmpBuf = {};
        valStringValueTempTmpBuf.tag = valStringValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valStringValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valStringValueTempTmpBuf.value = static_cast<Ark_String>(thisDeserializer.readString());
        }
        Opt_String valStringValueTemp = valStringValueTempTmpBuf;;
        return GetAccessors()->getClassWithConstructorAndSomeOptionalParamsDTSAccessor()->construct((const Ark_Number*) (&valNumber), static_cast<Opt_String*>(&valStringValueTemp));
}
KOALA_INTEROP_3(ClassWithConstructorAndSomeOptionalParamsDTS_construct, Ark_NativePointer, KInteropNumber, KSerializerBuffer, int32_t)
Ark_NativePointer impl_ClassWithConstructorAndSomeOptionalParamsDTS_getFinalizer() {
        return GetAccessors()->getClassWithConstructorAndSomeOptionalParamsDTSAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(ClassWithConstructorAndSomeOptionalParamsDTS_getFinalizer, Ark_NativePointer)
Ark_NativePointer impl_ClassWithConstructorAndSomeOptionalParamsDTS_of(KInteropNumber valNumber, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valStringValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_String valStringValueTempTmpBuf = {};
        valStringValueTempTmpBuf.tag = valStringValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valStringValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valStringValueTempTmpBuf.value = static_cast<Ark_String>(thisDeserializer.readString());
        }
        Opt_String valStringValueTemp = valStringValueTempTmpBuf;;
        return GetAccessors()->getClassWithConstructorAndSomeOptionalParamsDTSAccessor()->of((const Ark_Number*) (&valNumber), static_cast<Opt_String*>(&valStringValueTemp));
}
KOALA_INTEROP_3(ClassWithConstructorAndSomeOptionalParamsDTS_of, Ark_NativePointer, KInteropNumber, KSerializerBuffer, int32_t)
void impl_ClassWithConstructorAndSomeOptionalParamsDTS_method(Ark_NativePointer thisPtr, Ark_Boolean valBoolean, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_ClassWithConstructorAndSomeOptionalParamsDTS self = reinterpret_cast<Ark_ClassWithConstructorAndSomeOptionalParamsDTS>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valStringValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_String valStringValueTempTmpBuf = {};
        valStringValueTempTmpBuf.tag = valStringValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valStringValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valStringValueTempTmpBuf.value = static_cast<Ark_String>(thisDeserializer.readString());
        }
        Opt_String valStringValueTemp = valStringValueTempTmpBuf;;
        GetAccessors()->getClassWithConstructorAndSomeOptionalParamsDTSAccessor()->method(self, valBoolean, static_cast<Opt_String*>(&valStringValueTemp));
}
KOALA_INTEROP_DIRECT_V4(ClassWithConstructorAndSomeOptionalParamsDTS_method, Ark_NativePointer, Ark_Boolean, KSerializerBuffer, int32_t)
Ark_NativePointer impl_ClassWithConstructorAndStaticMethodsDTS_construct(KInteropNumber valNumber, const KStringPtr& valString) {
        return GetAccessors()->getClassWithConstructorAndStaticMethodsDTSAccessor()->construct((const Ark_Number*) (&valNumber), (const Ark_String*) (&valString));
}
KOALA_INTEROP_2(ClassWithConstructorAndStaticMethodsDTS_construct, Ark_NativePointer, KInteropNumber, KStringPtr)
Ark_NativePointer impl_ClassWithConstructorAndStaticMethodsDTS_getFinalizer() {
        return GetAccessors()->getClassWithConstructorAndStaticMethodsDTSAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(ClassWithConstructorAndStaticMethodsDTS_getFinalizer, Ark_NativePointer)
Ark_NativePointer impl_ClassWithConstructorAndStaticMethodsDTS_of(KInteropNumber valNumber, const KStringPtr& valString) {
        return GetAccessors()->getClassWithConstructorAndStaticMethodsDTSAccessor()->of((const Ark_Number*) (&valNumber), (const Ark_String*) (&valString));
}
KOALA_INTEROP_2(ClassWithConstructorAndStaticMethodsDTS_of, Ark_NativePointer, KInteropNumber, KStringPtr)
Ark_NativePointer impl_ClassWithConstructorAndWithoutParamsDTS_construct() {
        return GetAccessors()->getClassWithConstructorAndWithoutParamsDTSAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(ClassWithConstructorAndWithoutParamsDTS_construct, Ark_NativePointer)
Ark_NativePointer impl_ClassWithConstructorAndWithoutParamsDTS_getFinalizer() {
        return GetAccessors()->getClassWithConstructorAndWithoutParamsDTSAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(ClassWithConstructorAndWithoutParamsDTS_getFinalizer, Ark_NativePointer)
Ark_NativePointer impl_ClassWithConstructorAndWithoutParamsDTS_of() {
        return GetAccessors()->getClassWithConstructorAndWithoutParamsDTSAccessor()->of();
}
KOALA_INTEROP_DIRECT_0(ClassWithConstructorAndWithoutParamsDTS_of, Ark_NativePointer)
void impl_ClassWithConstructorAndWithoutParamsDTS_method(Ark_NativePointer thisPtr) {
        Ark_ClassWithConstructorAndWithoutParamsDTS self = reinterpret_cast<Ark_ClassWithConstructorAndWithoutParamsDTS>(thisPtr);
        GetAccessors()->getClassWithConstructorAndWithoutParamsDTSAccessor()->method(self);
}
KOALA_INTEROP_DIRECT_V1(ClassWithConstructorAndWithoutParamsDTS_method, Ark_NativePointer)
Ark_NativePointer impl_ClassWithConstructorDTS_construct(KInteropNumber valNumber, const KStringPtr& valString) {
        return GetAccessors()->getClassWithConstructorDTSAccessor()->construct((const Ark_Number*) (&valNumber), (const Ark_String*) (&valString));
}
KOALA_INTEROP_2(ClassWithConstructorDTS_construct, Ark_NativePointer, KInteropNumber, KStringPtr)
Ark_NativePointer impl_ClassWithConstructorDTS_getFinalizer() {
        return GetAccessors()->getClassWithConstructorDTSAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(ClassWithConstructorDTS_getFinalizer, Ark_NativePointer)
Ark_NativePointer impl_ClickEvent_construct() {
        return GetAccessors()->getClickEventAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(ClickEvent_construct, Ark_NativePointer)
Ark_NativePointer impl_ClickEvent_getFinalizer() {
        return GetAccessors()->getClickEventAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(ClickEvent_getFinalizer, Ark_NativePointer)
Ark_Number impl_ClickEvent_getDisplayX(Ark_NativePointer thisPtr) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        return GetAccessors()->getClickEventAccessor()->getDisplayX(self);
}
KOALA_INTEROP_DIRECT_1(ClickEvent_getDisplayX, KInteropNumber, Ark_NativePointer)
void impl_ClickEvent_setDisplayX(Ark_NativePointer thisPtr, KInteropNumber displayX) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        GetAccessors()->getClickEventAccessor()->setDisplayX(self, (const Ark_Number*) (&displayX));
}
KOALA_INTEROP_V2(ClickEvent_setDisplayX, Ark_NativePointer, KInteropNumber)
Ark_Number impl_ClickEvent_getDisplayY(Ark_NativePointer thisPtr) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        return GetAccessors()->getClickEventAccessor()->getDisplayY(self);
}
KOALA_INTEROP_DIRECT_1(ClickEvent_getDisplayY, KInteropNumber, Ark_NativePointer)
void impl_ClickEvent_setDisplayY(Ark_NativePointer thisPtr, KInteropNumber displayY) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        GetAccessors()->getClickEventAccessor()->setDisplayY(self, (const Ark_Number*) (&displayY));
}
KOALA_INTEROP_V2(ClickEvent_setDisplayY, Ark_NativePointer, KInteropNumber)
Ark_Number impl_ClickEvent_getWindowX(Ark_NativePointer thisPtr) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        return GetAccessors()->getClickEventAccessor()->getWindowX(self);
}
KOALA_INTEROP_DIRECT_1(ClickEvent_getWindowX, KInteropNumber, Ark_NativePointer)
void impl_ClickEvent_setWindowX(Ark_NativePointer thisPtr, KInteropNumber windowX) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        GetAccessors()->getClickEventAccessor()->setWindowX(self, (const Ark_Number*) (&windowX));
}
KOALA_INTEROP_V2(ClickEvent_setWindowX, Ark_NativePointer, KInteropNumber)
Ark_Number impl_ClickEvent_getWindowY(Ark_NativePointer thisPtr) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        return GetAccessors()->getClickEventAccessor()->getWindowY(self);
}
KOALA_INTEROP_DIRECT_1(ClickEvent_getWindowY, KInteropNumber, Ark_NativePointer)
void impl_ClickEvent_setWindowY(Ark_NativePointer thisPtr, KInteropNumber windowY) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        GetAccessors()->getClickEventAccessor()->setWindowY(self, (const Ark_Number*) (&windowY));
}
KOALA_INTEROP_V2(ClickEvent_setWindowY, Ark_NativePointer, KInteropNumber)
Ark_Number impl_ClickEvent_getScreenX(Ark_NativePointer thisPtr) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        return GetAccessors()->getClickEventAccessor()->getScreenX(self);
}
KOALA_INTEROP_DIRECT_1(ClickEvent_getScreenX, KInteropNumber, Ark_NativePointer)
void impl_ClickEvent_setScreenX(Ark_NativePointer thisPtr, KInteropNumber screenX) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        GetAccessors()->getClickEventAccessor()->setScreenX(self, (const Ark_Number*) (&screenX));
}
KOALA_INTEROP_V2(ClickEvent_setScreenX, Ark_NativePointer, KInteropNumber)
Ark_Number impl_ClickEvent_getScreenY(Ark_NativePointer thisPtr) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        return GetAccessors()->getClickEventAccessor()->getScreenY(self);
}
KOALA_INTEROP_DIRECT_1(ClickEvent_getScreenY, KInteropNumber, Ark_NativePointer)
void impl_ClickEvent_setScreenY(Ark_NativePointer thisPtr, KInteropNumber screenY) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        GetAccessors()->getClickEventAccessor()->setScreenY(self, (const Ark_Number*) (&screenY));
}
KOALA_INTEROP_V2(ClickEvent_setScreenY, Ark_NativePointer, KInteropNumber)
Ark_Number impl_ClickEvent_getX(Ark_NativePointer thisPtr) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        return GetAccessors()->getClickEventAccessor()->getX(self);
}
KOALA_INTEROP_DIRECT_1(ClickEvent_getX, KInteropNumber, Ark_NativePointer)
void impl_ClickEvent_setX(Ark_NativePointer thisPtr, KInteropNumber x) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        GetAccessors()->getClickEventAccessor()->setX(self, (const Ark_Number*) (&x));
}
KOALA_INTEROP_V2(ClickEvent_setX, Ark_NativePointer, KInteropNumber)
Ark_Number impl_ClickEvent_getY(Ark_NativePointer thisPtr) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        return GetAccessors()->getClickEventAccessor()->getY(self);
}
KOALA_INTEROP_DIRECT_1(ClickEvent_getY, KInteropNumber, Ark_NativePointer)
void impl_ClickEvent_setY(Ark_NativePointer thisPtr, KInteropNumber y) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        GetAccessors()->getClickEventAccessor()->setY(self, (const Ark_Number*) (&y));
}
KOALA_INTEROP_V2(ClickEvent_setY, Ark_NativePointer, KInteropNumber)
Ark_NativePointer impl_ClickEvent_getPreventDefault(Ark_NativePointer thisPtr) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        [[maybe_unused]] const auto &_api_call_result = GetAccessors()->getClickEventAccessor()->getPreventDefault(self);
        // TODO: Value serialization needs to be implemented
        return {};
}
KOALA_INTEROP_DIRECT_1(ClickEvent_getPreventDefault, Ark_NativePointer, Ark_NativePointer)
void impl_ClickEvent_setPreventDefault(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_ClickEvent self = reinterpret_cast<Ark_ClickEvent>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_Void preventDefaultValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_VOID))))};;
        GetAccessors()->getClickEventAccessor()->setPreventDefault(self, static_cast<Callback_Void*>(&preventDefaultValueTemp));
}
KOALA_INTEROP_DIRECT_V3(ClickEvent_setPreventDefault, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_ColorFilter_construct(KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int32 valueValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_Number valueValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(valueValueTempTmpBuf)>::type,
        std::decay<decltype(*valueValueTempTmpBuf.array)>::type>(&valueValueTempTmpBuf, valueValueTempTmpBufLength);
        for (int valueValueTempTmpBufBufCounterI = 0; valueValueTempTmpBufBufCounterI < valueValueTempTmpBufLength; valueValueTempTmpBufBufCounterI++) {
            valueValueTempTmpBuf.array[valueValueTempTmpBufBufCounterI] = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Array_Number valueValueTemp = valueValueTempTmpBuf;;
        return GetAccessors()->getColorFilterAccessor()->construct(static_cast<Array_Number*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_2(ColorFilter_construct, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_ColorFilter_getFinalizer() {
        return GetAccessors()->getColorFilterAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(ColorFilter_getFinalizer, Ark_NativePointer)
Ark_NativePointer impl_CustomDialogController_construct(KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_CustomDialogControllerOptions valueValueTemp = CustomDialogControllerOptions_serializer::read(thisDeserializer);;
        return GetAccessors()->getCustomDialogControllerAccessor()->construct(static_cast<Ark_CustomDialogControllerOptions*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_2(CustomDialogController_construct, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_CustomDialogController_getFinalizer() {
        return GetAccessors()->getCustomDialogControllerAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(CustomDialogController_getFinalizer, Ark_NativePointer)
void impl_CustomDialogController_open(Ark_NativePointer thisPtr) {
        Ark_CustomDialogController self = reinterpret_cast<Ark_CustomDialogController>(thisPtr);
        GetAccessors()->getCustomDialogControllerAccessor()->open(self);
}
KOALA_INTEROP_DIRECT_V1(CustomDialogController_open, Ark_NativePointer)
void impl_CustomDialogController_close(Ark_NativePointer thisPtr) {
        Ark_CustomDialogController self = reinterpret_cast<Ark_CustomDialogController>(thisPtr);
        GetAccessors()->getCustomDialogControllerAccessor()->close(self);
}
KOALA_INTEROP_DIRECT_V1(CustomDialogController_close, Ark_NativePointer)
Ark_NativePointer impl_CustomSpan_construct() {
        return GetAccessors()->getCustomSpanAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(CustomSpan_construct, Ark_NativePointer)
Ark_NativePointer impl_CustomSpan_getFinalizer() {
        return GetAccessors()->getCustomSpanAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(CustomSpan_getFinalizer, Ark_NativePointer)
void impl_CustomSpan_invalidate(Ark_NativePointer thisPtr) {
        Ark_CustomSpan self = reinterpret_cast<Ark_CustomSpan>(thisPtr);
        GetAccessors()->getCustomSpanAccessor()->invalidate(self);
}
KOALA_INTEROP_DIRECT_V1(CustomSpan_invalidate, Ark_NativePointer)
Ark_NativePointer impl_CustomSpan_getOnMeasure(Ark_NativePointer thisPtr) {
        Ark_CustomSpan self = reinterpret_cast<Ark_CustomSpan>(thisPtr);
        [[maybe_unused]] const auto &_api_call_result = GetAccessors()->getCustomSpanAccessor()->getOnMeasure(self);
        // TODO: Value serialization needs to be implemented
        return {};
}
KOALA_INTEROP_DIRECT_1(CustomSpan_getOnMeasure, Ark_NativePointer, Ark_NativePointer)
void impl_CustomSpan_setOnMeasure(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_CustomSpan self = reinterpret_cast<Ark_CustomSpan>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        AsyncCallback_CustomSpanMeasureInfo_CustomSpanMetrics onMeasureValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_CustomSpanMeasureInfo measureInfo, const Callback_CustomSpanMetrics_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_ASYNCCALLBACK_CUSTOMSPANMEASUREINFO_CUSTOMSPANMETRICS)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_CustomSpanMeasureInfo measureInfo, const Callback_CustomSpanMetrics_Void continuation)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_ASYNCCALLBACK_CUSTOMSPANMEASUREINFO_CUSTOMSPANMETRICS))))};;
        GetAccessors()->getCustomSpanAccessor()->setOnMeasure(self, static_cast<AsyncCallback_CustomSpanMeasureInfo_CustomSpanMetrics*>(&onMeasureValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CustomSpan_setOnMeasure, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_CustomSpan_getOnDraw(Ark_NativePointer thisPtr) {
        Ark_CustomSpan self = reinterpret_cast<Ark_CustomSpan>(thisPtr);
        [[maybe_unused]] const auto &_api_call_result = GetAccessors()->getCustomSpanAccessor()->getOnDraw(self);
        // TODO: Value serialization needs to be implemented
        return {};
}
KOALA_INTEROP_DIRECT_1(CustomSpan_getOnDraw, Ark_NativePointer, Ark_NativePointer)
void impl_CustomSpan_setOnDraw(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_CustomSpan self = reinterpret_cast<Ark_CustomSpan>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_DrawContext_CustomSpanDrawInfo_Void onDrawValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_DrawContext context, const Ark_CustomSpanDrawInfo drawInfo)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_DRAWCONTEXT_CUSTOMSPANDRAWINFO_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_DrawContext context, const Ark_CustomSpanDrawInfo drawInfo)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_DRAWCONTEXT_CUSTOMSPANDRAWINFO_VOID))))};;
        GetAccessors()->getCustomSpanAccessor()->setOnDraw(self, static_cast<Callback_DrawContext_CustomSpanDrawInfo_Void*>(&onDrawValueTemp));
}
KOALA_INTEROP_DIRECT_V3(CustomSpan_setOnDraw, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_DrawingRenderingContext_construct(KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto unitValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_LengthMetricsUnit unitValueTempTmpBuf = {};
        unitValueTempTmpBuf.tag = unitValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((unitValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            unitValueTempTmpBuf.value = static_cast<Ark_LengthMetricsUnit>(thisDeserializer.readInt32());
        }
        Opt_LengthMetricsUnit unitValueTemp = unitValueTempTmpBuf;;
        return GetAccessors()->getDrawingRenderingContextAccessor()->construct(static_cast<Opt_LengthMetricsUnit*>(&unitValueTemp));
}
KOALA_INTEROP_DIRECT_2(DrawingRenderingContext_construct, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_DrawingRenderingContext_getFinalizer() {
        return GetAccessors()->getDrawingRenderingContextAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(DrawingRenderingContext_getFinalizer, Ark_NativePointer)
void impl_DrawingRenderingContext_invalidate(Ark_NativePointer thisPtr) {
        Ark_DrawingRenderingContext self = reinterpret_cast<Ark_DrawingRenderingContext>(thisPtr);
        GetAccessors()->getDrawingRenderingContextAccessor()->invalidate(self);
}
KOALA_INTEROP_DIRECT_V1(DrawingRenderingContext_invalidate, Ark_NativePointer)
KInteropReturnBuffer impl_DrawingRenderingContext_getSize(Ark_NativePointer thisPtr) {
        Ark_DrawingRenderingContext self = reinterpret_cast<Ark_DrawingRenderingContext>(thisPtr);
        const auto &retValue = GetAccessors()->getDrawingRenderingContextAccessor()->getSize(self);
        SerializerBase _retSerializer {};
        Size_serializer::write(_retSerializer, retValue);
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(DrawingRenderingContext_getSize, KInteropReturnBuffer, Ark_NativePointer)
KInteropReturnBuffer impl_DrawingRenderingContext_getCanvas(Ark_NativePointer thisPtr) {
        Ark_DrawingRenderingContext self = reinterpret_cast<Ark_DrawingRenderingContext>(thisPtr);
        const auto &retValue = GetAccessors()->getDrawingRenderingContextAccessor()->getCanvas(self);
        SerializerBase _retSerializer {};
        DrawingCanvas_serializer::write(_retSerializer, retValue);
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(DrawingRenderingContext_getCanvas, KInteropReturnBuffer, Ark_NativePointer)
Ark_NativePointer impl_DrawModifier_construct() {
        return GetAccessors()->getDrawModifierAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(DrawModifier_construct, Ark_NativePointer)
Ark_NativePointer impl_DrawModifier_getFinalizer() {
        return GetAccessors()->getDrawModifierAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(DrawModifier_getFinalizer, Ark_NativePointer)
void impl_DrawModifier_invalidate(Ark_NativePointer thisPtr) {
        Ark_DrawModifier self = reinterpret_cast<Ark_DrawModifier>(thisPtr);
        GetAccessors()->getDrawModifierAccessor()->invalidate(self);
}
KOALA_INTEROP_DIRECT_V1(DrawModifier_invalidate, Ark_NativePointer)
KInteropReturnBuffer impl_DrawModifier_getDrawBehind(Ark_NativePointer thisPtr) {
        Ark_DrawModifier self = reinterpret_cast<Ark_DrawModifier>(thisPtr);
        const auto &retValue = GetAccessors()->getDrawModifierAccessor()->getDrawBehind(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeCallbackResource(retValueTmpValue.resource);
            _retSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(retValueTmpValue.call));
            _retSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(retValueTmpValue.callSync));
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(DrawModifier_getDrawBehind, KInteropReturnBuffer, Ark_NativePointer)
void impl_DrawModifier_setDrawBehind(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_DrawModifier self = reinterpret_cast<Ark_DrawModifier>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto drawBehindValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Callback_DrawContext_Void drawBehindValueTempTmpBuf = {};
        drawBehindValueTempTmpBuf.tag = drawBehindValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((drawBehindValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            drawBehindValueTempTmpBuf.value = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_DrawContext drawContext)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_DRAWCONTEXT_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_DrawContext drawContext)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_DRAWCONTEXT_VOID))))};
        }
        Opt_Callback_DrawContext_Void drawBehindValueTemp = drawBehindValueTempTmpBuf;;
        GetAccessors()->getDrawModifierAccessor()->setDrawBehind(self, static_cast<Opt_Callback_DrawContext_Void*>(&drawBehindValueTemp));
}
KOALA_INTEROP_DIRECT_V3(DrawModifier_setDrawBehind, Ark_NativePointer, KSerializerBuffer, int32_t)
KInteropReturnBuffer impl_DrawModifier_getDrawContent(Ark_NativePointer thisPtr) {
        Ark_DrawModifier self = reinterpret_cast<Ark_DrawModifier>(thisPtr);
        const auto &retValue = GetAccessors()->getDrawModifierAccessor()->getDrawContent(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeCallbackResource(retValueTmpValue.resource);
            _retSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(retValueTmpValue.call));
            _retSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(retValueTmpValue.callSync));
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(DrawModifier_getDrawContent, KInteropReturnBuffer, Ark_NativePointer)
void impl_DrawModifier_setDrawContent(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_DrawModifier self = reinterpret_cast<Ark_DrawModifier>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto drawContentValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Callback_DrawContext_Void drawContentValueTempTmpBuf = {};
        drawContentValueTempTmpBuf.tag = drawContentValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((drawContentValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            drawContentValueTempTmpBuf.value = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_DrawContext drawContext)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_DRAWCONTEXT_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_DrawContext drawContext)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_DRAWCONTEXT_VOID))))};
        }
        Opt_Callback_DrawContext_Void drawContentValueTemp = drawContentValueTempTmpBuf;;
        GetAccessors()->getDrawModifierAccessor()->setDrawContent(self, static_cast<Opt_Callback_DrawContext_Void*>(&drawContentValueTemp));
}
KOALA_INTEROP_DIRECT_V3(DrawModifier_setDrawContent, Ark_NativePointer, KSerializerBuffer, int32_t)
KInteropReturnBuffer impl_DrawModifier_getDrawFront(Ark_NativePointer thisPtr) {
        Ark_DrawModifier self = reinterpret_cast<Ark_DrawModifier>(thisPtr);
        const auto &retValue = GetAccessors()->getDrawModifierAccessor()->getDrawFront(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeCallbackResource(retValueTmpValue.resource);
            _retSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(retValueTmpValue.call));
            _retSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(retValueTmpValue.callSync));
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(DrawModifier_getDrawFront, KInteropReturnBuffer, Ark_NativePointer)
void impl_DrawModifier_setDrawFront(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_DrawModifier self = reinterpret_cast<Ark_DrawModifier>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto drawFrontValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Callback_DrawContext_Void drawFrontValueTempTmpBuf = {};
        drawFrontValueTempTmpBuf.tag = drawFrontValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((drawFrontValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            drawFrontValueTempTmpBuf.value = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_DrawContext drawContext)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_DRAWCONTEXT_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_DrawContext drawContext)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_DRAWCONTEXT_VOID))))};
        }
        Opt_Callback_DrawContext_Void drawFrontValueTemp = drawFrontValueTempTmpBuf;;
        GetAccessors()->getDrawModifierAccessor()->setDrawFront(self, static_cast<Opt_Callback_DrawContext_Void*>(&drawFrontValueTemp));
}
KOALA_INTEROP_DIRECT_V3(DrawModifier_setDrawFront, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_EventEmulator_emitClickEvent(Ark_NativePointer node, Ark_NativePointer event) {
        GetAccessors()->getEventEmulatorAccessor()->emitClickEvent(node, static_cast<Ark_ClickEvent>(event));
}
KOALA_INTEROP_DIRECT_V2(EventEmulator_emitClickEvent, Ark_NativePointer, Ark_NativePointer)
void impl_EventEmulator_emitTextInputEvent(Ark_NativePointer node, const KStringPtr& text) {
        GetAccessors()->getEventEmulatorAccessor()->emitTextInputEvent(node, (const Ark_String*) (&text));
}
KOALA_INTEROP_V2(EventEmulator_emitTextInputEvent, Ark_NativePointer, KStringPtr)
Ark_NativePointer impl_EventTargetInfo_construct() {
        return GetAccessors()->getEventTargetInfoAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(EventTargetInfo_construct, Ark_NativePointer)
Ark_NativePointer impl_EventTargetInfo_getFinalizer() {
        return GetAccessors()->getEventTargetInfoAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(EventTargetInfo_getFinalizer, Ark_NativePointer)
Ark_String impl_EventTargetInfo_getId(Ark_NativePointer thisPtr) {
        Ark_EventTargetInfo self = reinterpret_cast<Ark_EventTargetInfo>(thisPtr);
        return GetAccessors()->getEventTargetInfoAccessor()->getId(self);
}
KOALA_INTEROP_1(EventTargetInfo_getId, KStringPtr, Ark_NativePointer)
Ark_NativePointer impl_GestureRecognizer_construct() {
        return GetAccessors()->getGestureRecognizerAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(GestureRecognizer_construct, Ark_NativePointer)
Ark_NativePointer impl_GestureRecognizer_getFinalizer() {
        return GetAccessors()->getGestureRecognizerAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(GestureRecognizer_getFinalizer, Ark_NativePointer)
Ark_String impl_GestureRecognizer_getTag(Ark_NativePointer thisPtr) {
        Ark_GestureRecognizer self = reinterpret_cast<Ark_GestureRecognizer>(thisPtr);
        return GetAccessors()->getGestureRecognizerAccessor()->getTag(self);
}
KOALA_INTEROP_1(GestureRecognizer_getTag, KStringPtr, Ark_NativePointer)
Ark_Int32 impl_GestureRecognizer_getType(Ark_NativePointer thisPtr) {
        Ark_GestureRecognizer self = reinterpret_cast<Ark_GestureRecognizer>(thisPtr);
        return GetAccessors()->getGestureRecognizerAccessor()->getType(self);
}
KOALA_INTEROP_DIRECT_1(GestureRecognizer_getType, Ark_Int32, Ark_NativePointer)
Ark_Boolean impl_GestureRecognizer_isBuiltIn(Ark_NativePointer thisPtr) {
        Ark_GestureRecognizer self = reinterpret_cast<Ark_GestureRecognizer>(thisPtr);
        return GetAccessors()->getGestureRecognizerAccessor()->isBuiltIn(self);
}
KOALA_INTEROP_DIRECT_1(GestureRecognizer_isBuiltIn, Ark_Boolean, Ark_NativePointer)
void impl_GestureRecognizer_setEnabled(Ark_NativePointer thisPtr, Ark_Boolean isEnabled) {
        Ark_GestureRecognizer self = reinterpret_cast<Ark_GestureRecognizer>(thisPtr);
        GetAccessors()->getGestureRecognizerAccessor()->setEnabled(self, isEnabled);
}
KOALA_INTEROP_DIRECT_V2(GestureRecognizer_setEnabled, Ark_NativePointer, Ark_Boolean)
Ark_Boolean impl_GestureRecognizer_isEnabled(Ark_NativePointer thisPtr) {
        Ark_GestureRecognizer self = reinterpret_cast<Ark_GestureRecognizer>(thisPtr);
        return GetAccessors()->getGestureRecognizerAccessor()->isEnabled(self);
}
KOALA_INTEROP_DIRECT_1(GestureRecognizer_isEnabled, Ark_Boolean, Ark_NativePointer)
Ark_Int32 impl_GestureRecognizer_getState(Ark_NativePointer thisPtr) {
        Ark_GestureRecognizer self = reinterpret_cast<Ark_GestureRecognizer>(thisPtr);
        return GetAccessors()->getGestureRecognizerAccessor()->getState(self);
}
KOALA_INTEROP_DIRECT_1(GestureRecognizer_getState, Ark_Int32, Ark_NativePointer)
Ark_NativePointer impl_GestureRecognizer_getEventTargetInfo(Ark_NativePointer thisPtr) {
        Ark_GestureRecognizer self = reinterpret_cast<Ark_GestureRecognizer>(thisPtr);
        return GetAccessors()->getGestureRecognizerAccessor()->getEventTargetInfo(self);
}
KOALA_INTEROP_DIRECT_1(GestureRecognizer_getEventTargetInfo, Ark_NativePointer, Ark_NativePointer)
Ark_NativePointer impl_ICurve_construct() {
        return GetAccessors()->getICurveAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(ICurve_construct, Ark_NativePointer)
Ark_NativePointer impl_ICurve_getFinalizer() {
        return GetAccessors()->getICurveAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(ICurve_getFinalizer, Ark_NativePointer)
Ark_Number impl_ICurve_interpolate(Ark_NativePointer thisPtr, KInteropNumber fraction) {
        Ark_ICurve self = reinterpret_cast<Ark_ICurve>(thisPtr);
        return GetAccessors()->getICurveAccessor()->interpolate(self, (const Ark_Number*) (&fraction));
}
KOALA_INTEROP_2(ICurve_interpolate, KInteropNumber, Ark_NativePointer, KInteropNumber)
Ark_NativePointer impl_image_PixelMap_construct() {
        return GetAccessors()->getImage_PixelMapAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(image_PixelMap_construct, Ark_NativePointer)
Ark_NativePointer impl_image_PixelMap_getFinalizer() {
        return GetAccessors()->getImage_PixelMapAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(image_PixelMap_getFinalizer, Ark_NativePointer)
Ark_NativePointer impl_ImageBitmap_construct0(const KStringPtr& src) {
        return GetAccessors()->getImageBitmapAccessor()->construct0((const Ark_String*) (&src));
}
KOALA_INTEROP_1(ImageBitmap_construct0, Ark_NativePointer, KStringPtr)
Ark_NativePointer impl_ImageBitmap_construct1(const KStringPtr& src, Ark_Int32 unit) {
        return GetAccessors()->getImageBitmapAccessor()->construct1((const Ark_String*) (&src), static_cast<Ark_LengthMetricsUnit>(unit));
}
KOALA_INTEROP_2(ImageBitmap_construct1, Ark_NativePointer, KStringPtr, Ark_Int32)
Ark_NativePointer impl_ImageBitmap_construct2(Ark_NativePointer data) {
        return GetAccessors()->getImageBitmapAccessor()->construct2(static_cast<Ark_image_PixelMap>(data));
}
KOALA_INTEROP_DIRECT_1(ImageBitmap_construct2, Ark_NativePointer, Ark_NativePointer)
Ark_NativePointer impl_ImageBitmap_construct3(Ark_NativePointer data, Ark_Int32 unit) {
        return GetAccessors()->getImageBitmapAccessor()->construct3(static_cast<Ark_image_PixelMap>(data), static_cast<Ark_LengthMetricsUnit>(unit));
}
KOALA_INTEROP_DIRECT_2(ImageBitmap_construct3, Ark_NativePointer, Ark_NativePointer, Ark_Int32)
Ark_NativePointer impl_ImageBitmap_getFinalizer() {
        return GetAccessors()->getImageBitmapAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(ImageBitmap_getFinalizer, Ark_NativePointer)
void impl_ImageBitmap_close(Ark_NativePointer thisPtr) {
        Ark_ImageBitmap self = reinterpret_cast<Ark_ImageBitmap>(thisPtr);
        GetAccessors()->getImageBitmapAccessor()->close(self);
}
KOALA_INTEROP_DIRECT_V1(ImageBitmap_close, Ark_NativePointer)
Ark_NativePointer impl_ImageData_construct0(KInteropNumber width, KInteropNumber height, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto dataValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Buffer dataValueTempTmpBuf = {};
        dataValueTempTmpBuf.tag = dataValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((dataValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            dataValueTempTmpBuf.value = static_cast<Ark_Buffer>(thisDeserializer.readBuffer());
        }
        Opt_Buffer dataValueTemp = dataValueTempTmpBuf;;
        return GetAccessors()->getImageDataAccessor()->construct0((const Ark_Number*) (&width), (const Ark_Number*) (&height), static_cast<Opt_Buffer*>(&dataValueTemp));
}
KOALA_INTEROP_4(ImageData_construct0, Ark_NativePointer, KInteropNumber, KInteropNumber, KSerializerBuffer, int32_t)
Ark_NativePointer impl_ImageData_construct1(KInteropNumber width, KInteropNumber height, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto dataValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Buffer dataValueTempTmpBuf = {};
        dataValueTempTmpBuf.tag = dataValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((dataValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            dataValueTempTmpBuf.value = static_cast<Ark_Buffer>(thisDeserializer.readBuffer());
        }
        Opt_Buffer dataValueTemp = dataValueTempTmpBuf;;
        const auto unitValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_LengthMetricsUnit unitValueTempTmpBuf = {};
        unitValueTempTmpBuf.tag = unitValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((unitValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            unitValueTempTmpBuf.value = static_cast<Ark_LengthMetricsUnit>(thisDeserializer.readInt32());
        }
        Opt_LengthMetricsUnit unitValueTemp = unitValueTempTmpBuf;;
        return GetAccessors()->getImageDataAccessor()->construct1((const Ark_Number*) (&width), (const Ark_Number*) (&height), static_cast<Opt_Buffer*>(&dataValueTemp), static_cast<Opt_LengthMetricsUnit*>(&unitValueTemp));
}
KOALA_INTEROP_4(ImageData_construct1, Ark_NativePointer, KInteropNumber, KInteropNumber, KSerializerBuffer, int32_t)
Ark_NativePointer impl_ImageData_getFinalizer() {
        return GetAccessors()->getImageDataAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(ImageData_getFinalizer, Ark_NativePointer)
KInteropReturnBuffer impl_ImageData_getData(Ark_NativePointer thisPtr) {
        Ark_ImageData self = reinterpret_cast<Ark_ImageData>(thisPtr);
        const auto &retValue = GetAccessors()->getImageDataAccessor()->getData(self);
        SerializerBase _retSerializer {};
        _retSerializer.writeBuffer(retValue);
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(ImageData_getData, KInteropReturnBuffer, Ark_NativePointer)
Ark_Number impl_ImageData_getHeight(Ark_NativePointer thisPtr) {
        Ark_ImageData self = reinterpret_cast<Ark_ImageData>(thisPtr);
        return GetAccessors()->getImageDataAccessor()->getHeight(self);
}
KOALA_INTEROP_DIRECT_1(ImageData_getHeight, KInteropNumber, Ark_NativePointer)
Ark_Number impl_ImageData_getWidth(Ark_NativePointer thisPtr) {
        Ark_ImageData self = reinterpret_cast<Ark_ImageData>(thisPtr);
        return GetAccessors()->getImageDataAccessor()->getWidth(self);
}
KOALA_INTEROP_DIRECT_1(ImageData_getWidth, KInteropNumber, Ark_NativePointer)
Ark_NativePointer impl_Layoutable_construct() {
        return GetAccessors()->getLayoutableAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(Layoutable_construct, Ark_NativePointer)
Ark_NativePointer impl_Layoutable_getFinalizer() {
        return GetAccessors()->getLayoutableAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(Layoutable_getFinalizer, Ark_NativePointer)
void impl_Layoutable_layout(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_Layoutable self = reinterpret_cast<Ark_Layoutable>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Position positionValueTemp = Position_serializer::read(thisDeserializer);;
        GetAccessors()->getLayoutableAccessor()->layout(self, static_cast<Ark_Position*>(&positionValueTemp));
}
KOALA_INTEROP_DIRECT_V3(Layoutable_layout, Ark_NativePointer, KSerializerBuffer, int32_t)
KInteropReturnBuffer impl_Layoutable_getMargin(Ark_NativePointer thisPtr) {
        Ark_Layoutable self = reinterpret_cast<Ark_Layoutable>(thisPtr);
        const auto &retValue = GetAccessors()->getLayoutableAccessor()->getMargin(self);
        SerializerBase _retSerializer {};
        DirectionalEdgesT_serializer::write(_retSerializer, retValue);
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(Layoutable_getMargin, KInteropReturnBuffer, Ark_NativePointer)
KInteropReturnBuffer impl_Layoutable_getPadding(Ark_NativePointer thisPtr) {
        Ark_Layoutable self = reinterpret_cast<Ark_Layoutable>(thisPtr);
        const auto &retValue = GetAccessors()->getLayoutableAccessor()->getPadding(self);
        SerializerBase _retSerializer {};
        DirectionalEdgesT_serializer::write(_retSerializer, retValue);
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(Layoutable_getPadding, KInteropReturnBuffer, Ark_NativePointer)
KInteropReturnBuffer impl_Layoutable_getBorderWidth(Ark_NativePointer thisPtr) {
        Ark_Layoutable self = reinterpret_cast<Ark_Layoutable>(thisPtr);
        const auto &retValue = GetAccessors()->getLayoutableAccessor()->getBorderWidth(self);
        SerializerBase _retSerializer {};
        DirectionalEdgesT_serializer::write(_retSerializer, retValue);
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(Layoutable_getBorderWidth, KInteropReturnBuffer, Ark_NativePointer)
KInteropReturnBuffer impl_Layoutable_getMeasureResult(Ark_NativePointer thisPtr) {
        Ark_Layoutable self = reinterpret_cast<Ark_Layoutable>(thisPtr);
        const auto &retValue = GetAccessors()->getLayoutableAccessor()->getMeasureResult(self);
        SerializerBase _retSerializer {};
        MeasureResult_serializer::write(_retSerializer, retValue);
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(Layoutable_getMeasureResult, KInteropReturnBuffer, Ark_NativePointer)
void impl_Layoutable_setMeasureResult(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_Layoutable self = reinterpret_cast<Ark_Layoutable>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_MeasureResult measureResultValueTemp = MeasureResult_serializer::read(thisDeserializer);;
        GetAccessors()->getLayoutableAccessor()->setMeasureResult(self, static_cast<Ark_MeasureResult*>(&measureResultValueTemp));
}
KOALA_INTEROP_DIRECT_V3(Layoutable_setMeasureResult, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_LinearGradient_construct(KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int32 colorStopsValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_ColorStop colorStopsValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(colorStopsValueTempTmpBuf)>::type,
        std::decay<decltype(*colorStopsValueTempTmpBuf.array)>::type>(&colorStopsValueTempTmpBuf, colorStopsValueTempTmpBufLength);
        for (int colorStopsValueTempTmpBufBufCounterI = 0; colorStopsValueTempTmpBufBufCounterI < colorStopsValueTempTmpBufLength; colorStopsValueTempTmpBufBufCounterI++) {
            colorStopsValueTempTmpBuf.array[colorStopsValueTempTmpBufBufCounterI] = ColorStop_serializer::read(thisDeserializer);
        }
        Array_ColorStop colorStopsValueTemp = colorStopsValueTempTmpBuf;;
        return GetAccessors()->getLinearGradientAccessor()->construct(static_cast<Array_ColorStop*>(&colorStopsValueTemp));
}
KOALA_INTEROP_DIRECT_2(LinearGradient_construct, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_LinearGradient_getFinalizer() {
        return GetAccessors()->getLinearGradientAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(LinearGradient_getFinalizer, Ark_NativePointer)
Ark_NativePointer impl_Matrix2D_construct0() {
        return GetAccessors()->getMatrix2DAccessor()->construct0();
}
KOALA_INTEROP_DIRECT_0(Matrix2D_construct0, Ark_NativePointer)
Ark_NativePointer impl_Matrix2D_construct1(Ark_Int32 unit) {
        return GetAccessors()->getMatrix2DAccessor()->construct1(static_cast<Ark_LengthMetricsUnit>(unit));
}
KOALA_INTEROP_DIRECT_1(Matrix2D_construct1, Ark_NativePointer, Ark_Int32)
Ark_NativePointer impl_Matrix2D_getFinalizer() {
        return GetAccessors()->getMatrix2DAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(Matrix2D_getFinalizer, Ark_NativePointer)
Ark_NativePointer impl_Matrix2D_identity(Ark_NativePointer thisPtr) {
        Ark_Matrix2D self = reinterpret_cast<Ark_Matrix2D>(thisPtr);
        return GetAccessors()->getMatrix2DAccessor()->identity(self);
}
KOALA_INTEROP_DIRECT_1(Matrix2D_identity, Ark_NativePointer, Ark_NativePointer)
Ark_NativePointer impl_Matrix2D_invert(Ark_NativePointer thisPtr) {
        Ark_Matrix2D self = reinterpret_cast<Ark_Matrix2D>(thisPtr);
        return GetAccessors()->getMatrix2DAccessor()->invert(self);
}
KOALA_INTEROP_DIRECT_1(Matrix2D_invert, Ark_NativePointer, Ark_NativePointer)
Ark_NativePointer impl_Matrix2D_multiply(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_Matrix2D self = reinterpret_cast<Ark_Matrix2D>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto otherValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Matrix2D otherValueTempTmpBuf = {};
        otherValueTempTmpBuf.tag = otherValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((otherValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            otherValueTempTmpBuf.value = static_cast<Ark_Matrix2D>(Matrix2D_serializer::read(thisDeserializer));
        }
        Opt_Matrix2D otherValueTemp = otherValueTempTmpBuf;;
        return GetAccessors()->getMatrix2DAccessor()->multiply(self, static_cast<Opt_Matrix2D*>(&otherValueTemp));
}
KOALA_INTEROP_DIRECT_3(Matrix2D_multiply, Ark_NativePointer, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_Matrix2D_rotate0(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_Matrix2D self = reinterpret_cast<Ark_Matrix2D>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto rxValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number rxValueTempTmpBuf = {};
        rxValueTempTmpBuf.tag = rxValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((rxValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            rxValueTempTmpBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Opt_Number rxValueTemp = rxValueTempTmpBuf;;
        const auto ryValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number ryValueTempTmpBuf = {};
        ryValueTempTmpBuf.tag = ryValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((ryValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            ryValueTempTmpBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Opt_Number ryValueTemp = ryValueTempTmpBuf;;
        return GetAccessors()->getMatrix2DAccessor()->rotate0(self, static_cast<Opt_Number*>(&rxValueTemp), static_cast<Opt_Number*>(&ryValueTemp));
}
KOALA_INTEROP_DIRECT_3(Matrix2D_rotate0, Ark_NativePointer, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_Matrix2D_rotate1(Ark_NativePointer thisPtr, KInteropNumber degree, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_Matrix2D self = reinterpret_cast<Ark_Matrix2D>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto rxValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number rxValueTempTmpBuf = {};
        rxValueTempTmpBuf.tag = rxValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((rxValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            rxValueTempTmpBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Opt_Number rxValueTemp = rxValueTempTmpBuf;;
        const auto ryValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number ryValueTempTmpBuf = {};
        ryValueTempTmpBuf.tag = ryValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((ryValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            ryValueTempTmpBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Opt_Number ryValueTemp = ryValueTempTmpBuf;;
        return GetAccessors()->getMatrix2DAccessor()->rotate1(self, (const Ark_Number*) (&degree), static_cast<Opt_Number*>(&rxValueTemp), static_cast<Opt_Number*>(&ryValueTemp));
}
KOALA_INTEROP_4(Matrix2D_rotate1, Ark_NativePointer, Ark_NativePointer, KInteropNumber, KSerializerBuffer, int32_t)
Ark_NativePointer impl_Matrix2D_translate(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_Matrix2D self = reinterpret_cast<Ark_Matrix2D>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto txValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number txValueTempTmpBuf = {};
        txValueTempTmpBuf.tag = txValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((txValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            txValueTempTmpBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Opt_Number txValueTemp = txValueTempTmpBuf;;
        const auto tyValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number tyValueTempTmpBuf = {};
        tyValueTempTmpBuf.tag = tyValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((tyValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            tyValueTempTmpBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Opt_Number tyValueTemp = tyValueTempTmpBuf;;
        return GetAccessors()->getMatrix2DAccessor()->translate(self, static_cast<Opt_Number*>(&txValueTemp), static_cast<Opt_Number*>(&tyValueTemp));
}
KOALA_INTEROP_DIRECT_3(Matrix2D_translate, Ark_NativePointer, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_Matrix2D_scale(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_Matrix2D self = reinterpret_cast<Ark_Matrix2D>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto sxValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number sxValueTempTmpBuf = {};
        sxValueTempTmpBuf.tag = sxValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((sxValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            sxValueTempTmpBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Opt_Number sxValueTemp = sxValueTempTmpBuf;;
        const auto syValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number syValueTempTmpBuf = {};
        syValueTempTmpBuf.tag = syValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((syValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            syValueTempTmpBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Opt_Number syValueTemp = syValueTempTmpBuf;;
        return GetAccessors()->getMatrix2DAccessor()->scale(self, static_cast<Opt_Number*>(&sxValueTemp), static_cast<Opt_Number*>(&syValueTemp));
}
KOALA_INTEROP_DIRECT_3(Matrix2D_scale, Ark_NativePointer, Ark_NativePointer, KSerializerBuffer, int32_t)
KInteropReturnBuffer impl_Matrix2D_getScaleX(Ark_NativePointer thisPtr) {
        Ark_Matrix2D self = reinterpret_cast<Ark_Matrix2D>(thisPtr);
        const auto &retValue = GetAccessors()->getMatrix2DAccessor()->getScaleX(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeNumber(retValueTmpValue);
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(Matrix2D_getScaleX, KInteropReturnBuffer, Ark_NativePointer)
void impl_Matrix2D_setScaleX(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_Matrix2D self = reinterpret_cast<Ark_Matrix2D>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto scaleXValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number scaleXValueTempTmpBuf = {};
        scaleXValueTempTmpBuf.tag = scaleXValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((scaleXValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            scaleXValueTempTmpBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Opt_Number scaleXValueTemp = scaleXValueTempTmpBuf;;
        GetAccessors()->getMatrix2DAccessor()->setScaleX(self, static_cast<Opt_Number*>(&scaleXValueTemp));
}
KOALA_INTEROP_DIRECT_V3(Matrix2D_setScaleX, Ark_NativePointer, KSerializerBuffer, int32_t)
KInteropReturnBuffer impl_Matrix2D_getRotateY(Ark_NativePointer thisPtr) {
        Ark_Matrix2D self = reinterpret_cast<Ark_Matrix2D>(thisPtr);
        const auto &retValue = GetAccessors()->getMatrix2DAccessor()->getRotateY(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeNumber(retValueTmpValue);
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(Matrix2D_getRotateY, KInteropReturnBuffer, Ark_NativePointer)
void impl_Matrix2D_setRotateY(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_Matrix2D self = reinterpret_cast<Ark_Matrix2D>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto rotateYValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number rotateYValueTempTmpBuf = {};
        rotateYValueTempTmpBuf.tag = rotateYValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((rotateYValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            rotateYValueTempTmpBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Opt_Number rotateYValueTemp = rotateYValueTempTmpBuf;;
        GetAccessors()->getMatrix2DAccessor()->setRotateY(self, static_cast<Opt_Number*>(&rotateYValueTemp));
}
KOALA_INTEROP_DIRECT_V3(Matrix2D_setRotateY, Ark_NativePointer, KSerializerBuffer, int32_t)
KInteropReturnBuffer impl_Matrix2D_getRotateX(Ark_NativePointer thisPtr) {
        Ark_Matrix2D self = reinterpret_cast<Ark_Matrix2D>(thisPtr);
        const auto &retValue = GetAccessors()->getMatrix2DAccessor()->getRotateX(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeNumber(retValueTmpValue);
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(Matrix2D_getRotateX, KInteropReturnBuffer, Ark_NativePointer)
void impl_Matrix2D_setRotateX(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_Matrix2D self = reinterpret_cast<Ark_Matrix2D>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto rotateXValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number rotateXValueTempTmpBuf = {};
        rotateXValueTempTmpBuf.tag = rotateXValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((rotateXValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            rotateXValueTempTmpBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Opt_Number rotateXValueTemp = rotateXValueTempTmpBuf;;
        GetAccessors()->getMatrix2DAccessor()->setRotateX(self, static_cast<Opt_Number*>(&rotateXValueTemp));
}
KOALA_INTEROP_DIRECT_V3(Matrix2D_setRotateX, Ark_NativePointer, KSerializerBuffer, int32_t)
KInteropReturnBuffer impl_Matrix2D_getScaleY(Ark_NativePointer thisPtr) {
        Ark_Matrix2D self = reinterpret_cast<Ark_Matrix2D>(thisPtr);
        const auto &retValue = GetAccessors()->getMatrix2DAccessor()->getScaleY(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeNumber(retValueTmpValue);
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(Matrix2D_getScaleY, KInteropReturnBuffer, Ark_NativePointer)
void impl_Matrix2D_setScaleY(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_Matrix2D self = reinterpret_cast<Ark_Matrix2D>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto scaleYValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number scaleYValueTempTmpBuf = {};
        scaleYValueTempTmpBuf.tag = scaleYValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((scaleYValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            scaleYValueTempTmpBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Opt_Number scaleYValueTemp = scaleYValueTempTmpBuf;;
        GetAccessors()->getMatrix2DAccessor()->setScaleY(self, static_cast<Opt_Number*>(&scaleYValueTemp));
}
KOALA_INTEROP_DIRECT_V3(Matrix2D_setScaleY, Ark_NativePointer, KSerializerBuffer, int32_t)
KInteropReturnBuffer impl_Matrix2D_getTranslateX(Ark_NativePointer thisPtr) {
        Ark_Matrix2D self = reinterpret_cast<Ark_Matrix2D>(thisPtr);
        const auto &retValue = GetAccessors()->getMatrix2DAccessor()->getTranslateX(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeNumber(retValueTmpValue);
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(Matrix2D_getTranslateX, KInteropReturnBuffer, Ark_NativePointer)
void impl_Matrix2D_setTranslateX(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_Matrix2D self = reinterpret_cast<Ark_Matrix2D>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto translateXValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number translateXValueTempTmpBuf = {};
        translateXValueTempTmpBuf.tag = translateXValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((translateXValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            translateXValueTempTmpBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Opt_Number translateXValueTemp = translateXValueTempTmpBuf;;
        GetAccessors()->getMatrix2DAccessor()->setTranslateX(self, static_cast<Opt_Number*>(&translateXValueTemp));
}
KOALA_INTEROP_DIRECT_V3(Matrix2D_setTranslateX, Ark_NativePointer, KSerializerBuffer, int32_t)
KInteropReturnBuffer impl_Matrix2D_getTranslateY(Ark_NativePointer thisPtr) {
        Ark_Matrix2D self = reinterpret_cast<Ark_Matrix2D>(thisPtr);
        const auto &retValue = GetAccessors()->getMatrix2DAccessor()->getTranslateY(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeNumber(retValueTmpValue);
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(Matrix2D_getTranslateY, KInteropReturnBuffer, Ark_NativePointer)
void impl_Matrix2D_setTranslateY(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_Matrix2D self = reinterpret_cast<Ark_Matrix2D>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto translateYValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number translateYValueTempTmpBuf = {};
        translateYValueTempTmpBuf.tag = translateYValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((translateYValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            translateYValueTempTmpBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Opt_Number translateYValueTemp = translateYValueTempTmpBuf;;
        GetAccessors()->getMatrix2DAccessor()->setTranslateY(self, static_cast<Opt_Number*>(&translateYValueTemp));
}
KOALA_INTEROP_DIRECT_V3(Matrix2D_setTranslateY, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_Measurable_construct() {
        return GetAccessors()->getMeasurableAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(Measurable_construct, Ark_NativePointer)
Ark_NativePointer impl_Measurable_getFinalizer() {
        return GetAccessors()->getMeasurableAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(Measurable_getFinalizer, Ark_NativePointer)
KInteropReturnBuffer impl_Measurable_measure(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_Measurable self = reinterpret_cast<Ark_Measurable>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_ConstraintSizeOptions constraintValueTemp = ConstraintSizeOptions_serializer::read(thisDeserializer);;
        const auto &retValue = GetAccessors()->getMeasurableAccessor()->measure(self, static_cast<Ark_ConstraintSizeOptions*>(&constraintValueTemp));
        SerializerBase _retSerializer {};
        MeasureResult_serializer::write(_retSerializer, retValue);
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_3(Measurable_measure, KInteropReturnBuffer, Ark_NativePointer, KSerializerBuffer, int32_t)
KInteropReturnBuffer impl_Measurable_getMargin(Ark_NativePointer thisPtr) {
        Ark_Measurable self = reinterpret_cast<Ark_Measurable>(thisPtr);
        const auto &retValue = GetAccessors()->getMeasurableAccessor()->getMargin(self);
        SerializerBase _retSerializer {};
        DirectionalEdgesT_serializer::write(_retSerializer, retValue);
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(Measurable_getMargin, KInteropReturnBuffer, Ark_NativePointer)
KInteropReturnBuffer impl_Measurable_getPadding(Ark_NativePointer thisPtr) {
        Ark_Measurable self = reinterpret_cast<Ark_Measurable>(thisPtr);
        const auto &retValue = GetAccessors()->getMeasurableAccessor()->getPadding(self);
        SerializerBase _retSerializer {};
        DirectionalEdgesT_serializer::write(_retSerializer, retValue);
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(Measurable_getPadding, KInteropReturnBuffer, Ark_NativePointer)
KInteropReturnBuffer impl_Measurable_getBorderWidth(Ark_NativePointer thisPtr) {
        Ark_Measurable self = reinterpret_cast<Ark_Measurable>(thisPtr);
        const auto &retValue = GetAccessors()->getMeasurableAccessor()->getBorderWidth(self);
        SerializerBase _retSerializer {};
        DirectionalEdgesT_serializer::write(_retSerializer, retValue);
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(Measurable_getBorderWidth, KInteropReturnBuffer, Ark_NativePointer)
Ark_NativePointer impl_MediaQuery_construct() {
        return GetAccessors()->getMediaQueryAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(MediaQuery_construct, Ark_NativePointer)
Ark_NativePointer impl_MediaQuery_getFinalizer() {
        return GetAccessors()->getMediaQueryAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(MediaQuery_getFinalizer, Ark_NativePointer)
void impl_MediaQuery_stub(Ark_NativePointer thisPtr) {
        Ark_MediaQuery self = reinterpret_cast<Ark_MediaQuery>(thisPtr);
        GetAccessors()->getMediaQueryAccessor()->stub(self);
}
KOALA_INTEROP_DIRECT_V1(MediaQuery_stub, Ark_NativePointer)
Ark_NativePointer impl_NavDestinationContext_construct() {
        return GetAccessors()->getNavDestinationContextAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(NavDestinationContext_construct, Ark_NativePointer)
Ark_NativePointer impl_NavDestinationContext_getFinalizer() {
        return GetAccessors()->getNavDestinationContextAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(NavDestinationContext_getFinalizer, Ark_NativePointer)
KInteropReturnBuffer impl_NavDestinationContext_getConfigInRouteMap(Ark_NativePointer thisPtr) {
        Ark_NavDestinationContext self = reinterpret_cast<Ark_NavDestinationContext>(thisPtr);
        const auto &retValue = GetAccessors()->getNavDestinationContextAccessor()->getConfigInRouteMap(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            RouteMapConfig_serializer::write(_retSerializer, retValueTmpValue);
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(NavDestinationContext_getConfigInRouteMap, KInteropReturnBuffer, Ark_NativePointer)
Ark_NativePointer impl_NavDestinationContext_getPathInfo(Ark_NativePointer thisPtr) {
        Ark_NavDestinationContext self = reinterpret_cast<Ark_NavDestinationContext>(thisPtr);
        return GetAccessors()->getNavDestinationContextAccessor()->getPathInfo(self);
}
KOALA_INTEROP_DIRECT_1(NavDestinationContext_getPathInfo, Ark_NativePointer, Ark_NativePointer)
void impl_NavDestinationContext_setPathInfo(Ark_NativePointer thisPtr, Ark_NativePointer pathInfo) {
        Ark_NavDestinationContext self = reinterpret_cast<Ark_NavDestinationContext>(thisPtr);
        GetAccessors()->getNavDestinationContextAccessor()->setPathInfo(self, static_cast<Ark_NavPathInfo>(pathInfo));
}
KOALA_INTEROP_DIRECT_V2(NavDestinationContext_setPathInfo, Ark_NativePointer, Ark_NativePointer)
Ark_NativePointer impl_NavDestinationContext_getPathStack(Ark_NativePointer thisPtr) {
        Ark_NavDestinationContext self = reinterpret_cast<Ark_NavDestinationContext>(thisPtr);
        return GetAccessors()->getNavDestinationContextAccessor()->getPathStack(self);
}
KOALA_INTEROP_DIRECT_1(NavDestinationContext_getPathStack, Ark_NativePointer, Ark_NativePointer)
void impl_NavDestinationContext_setPathStack(Ark_NativePointer thisPtr, Ark_NativePointer pathStack) {
        Ark_NavDestinationContext self = reinterpret_cast<Ark_NavDestinationContext>(thisPtr);
        GetAccessors()->getNavDestinationContextAccessor()->setPathStack(self, static_cast<Ark_NavPathStack>(pathStack));
}
KOALA_INTEROP_DIRECT_V2(NavDestinationContext_setPathStack, Ark_NativePointer, Ark_NativePointer)
KInteropReturnBuffer impl_NavDestinationContext_getNavDestinationId(Ark_NativePointer thisPtr) {
        Ark_NavDestinationContext self = reinterpret_cast<Ark_NavDestinationContext>(thisPtr);
        const auto &retValue = GetAccessors()->getNavDestinationContextAccessor()->getNavDestinationId(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeString(retValueTmpValue);
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(NavDestinationContext_getNavDestinationId, KInteropReturnBuffer, Ark_NativePointer)
void impl_NavDestinationContext_setNavDestinationId(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NavDestinationContext self = reinterpret_cast<Ark_NavDestinationContext>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto navDestinationIdValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_String navDestinationIdValueTempTmpBuf = {};
        navDestinationIdValueTempTmpBuf.tag = navDestinationIdValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((navDestinationIdValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            navDestinationIdValueTempTmpBuf.value = static_cast<Ark_String>(thisDeserializer.readString());
        }
        Opt_String navDestinationIdValueTemp = navDestinationIdValueTempTmpBuf;;
        GetAccessors()->getNavDestinationContextAccessor()->setNavDestinationId(self, static_cast<Opt_String*>(&navDestinationIdValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavDestinationContext_setNavDestinationId, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_NavDestinationInfo_construct() {
        return GetAccessors()->getNavDestinationInfoAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(NavDestinationInfo_construct, Ark_NativePointer)
Ark_NativePointer impl_NavDestinationInfo_getFinalizer() {
        return GetAccessors()->getNavDestinationInfoAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(NavDestinationInfo_getFinalizer, Ark_NativePointer)
void impl_NavDestinationInfo_stub(Ark_NativePointer thisPtr) {
        Ark_NavDestinationInfo self = reinterpret_cast<Ark_NavDestinationInfo>(thisPtr);
        GetAccessors()->getNavDestinationInfoAccessor()->stub(self);
}
KOALA_INTEROP_DIRECT_V1(NavDestinationInfo_stub, Ark_NativePointer)
Ark_NativePointer impl_NavigationInfo_construct() {
        return GetAccessors()->getNavigationInfoAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(NavigationInfo_construct, Ark_NativePointer)
Ark_NativePointer impl_NavigationInfo_getFinalizer() {
        return GetAccessors()->getNavigationInfoAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(NavigationInfo_getFinalizer, Ark_NativePointer)
void impl_NavigationInfo_stub(Ark_NativePointer thisPtr) {
        Ark_NavigationInfo self = reinterpret_cast<Ark_NavigationInfo>(thisPtr);
        GetAccessors()->getNavigationInfoAccessor()->stub(self);
}
KOALA_INTEROP_DIRECT_V1(NavigationInfo_stub, Ark_NativePointer)
Ark_NativePointer impl_NavigationTransitionProxy_construct() {
        return GetAccessors()->getNavigationTransitionProxyAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(NavigationTransitionProxy_construct, Ark_NativePointer)
Ark_NativePointer impl_NavigationTransitionProxy_getFinalizer() {
        return GetAccessors()->getNavigationTransitionProxyAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(NavigationTransitionProxy_getFinalizer, Ark_NativePointer)
void impl_NavigationTransitionProxy_finishTransition(Ark_NativePointer thisPtr) {
        Ark_NavigationTransitionProxy self = reinterpret_cast<Ark_NavigationTransitionProxy>(thisPtr);
        GetAccessors()->getNavigationTransitionProxyAccessor()->finishTransition(self);
}
KOALA_INTEROP_DIRECT_V1(NavigationTransitionProxy_finishTransition, Ark_NativePointer)
void impl_NavigationTransitionProxy_cancelTransition(Ark_NativePointer thisPtr) {
        Ark_NavigationTransitionProxy self = reinterpret_cast<Ark_NavigationTransitionProxy>(thisPtr);
        GetAccessors()->getNavigationTransitionProxyAccessor()->cancelTransition(self);
}
KOALA_INTEROP_DIRECT_V1(NavigationTransitionProxy_cancelTransition, Ark_NativePointer)
void impl_NavigationTransitionProxy_updateTransition(Ark_NativePointer thisPtr, KInteropNumber progress) {
        Ark_NavigationTransitionProxy self = reinterpret_cast<Ark_NavigationTransitionProxy>(thisPtr);
        GetAccessors()->getNavigationTransitionProxyAccessor()->updateTransition(self, (const Ark_Number*) (&progress));
}
KOALA_INTEROP_V2(NavigationTransitionProxy_updateTransition, Ark_NativePointer, KInteropNumber)
KInteropReturnBuffer impl_NavigationTransitionProxy_getFrom(Ark_NativePointer thisPtr) {
        Ark_NavigationTransitionProxy self = reinterpret_cast<Ark_NavigationTransitionProxy>(thisPtr);
        const auto &retValue = GetAccessors()->getNavigationTransitionProxyAccessor()->getFrom(self);
        SerializerBase _retSerializer {};
        NavContentInfo_serializer::write(_retSerializer, retValue);
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(NavigationTransitionProxy_getFrom, KInteropReturnBuffer, Ark_NativePointer)
void impl_NavigationTransitionProxy_setFrom(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NavigationTransitionProxy self = reinterpret_cast<Ark_NavigationTransitionProxy>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_NavContentInfo fromValueTemp = NavContentInfo_serializer::read(thisDeserializer);;
        GetAccessors()->getNavigationTransitionProxyAccessor()->setFrom(self, static_cast<Ark_NavContentInfo*>(&fromValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavigationTransitionProxy_setFrom, Ark_NativePointer, KSerializerBuffer, int32_t)
KInteropReturnBuffer impl_NavigationTransitionProxy_getTo(Ark_NativePointer thisPtr) {
        Ark_NavigationTransitionProxy self = reinterpret_cast<Ark_NavigationTransitionProxy>(thisPtr);
        const auto &retValue = GetAccessors()->getNavigationTransitionProxyAccessor()->getTo(self);
        SerializerBase _retSerializer {};
        NavContentInfo_serializer::write(_retSerializer, retValue);
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(NavigationTransitionProxy_getTo, KInteropReturnBuffer, Ark_NativePointer)
void impl_NavigationTransitionProxy_setTo(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NavigationTransitionProxy self = reinterpret_cast<Ark_NavigationTransitionProxy>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_NavContentInfo toValueTemp = NavContentInfo_serializer::read(thisDeserializer);;
        GetAccessors()->getNavigationTransitionProxyAccessor()->setTo(self, static_cast<Ark_NavContentInfo*>(&toValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavigationTransitionProxy_setTo, Ark_NativePointer, KSerializerBuffer, int32_t)
KInteropReturnBuffer impl_NavigationTransitionProxy_getIsInteractive(Ark_NativePointer thisPtr) {
        Ark_NavigationTransitionProxy self = reinterpret_cast<Ark_NavigationTransitionProxy>(thisPtr);
        const auto &retValue = GetAccessors()->getNavigationTransitionProxyAccessor()->getIsInteractive(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeBoolean(retValueTmpValue);
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(NavigationTransitionProxy_getIsInteractive, KInteropReturnBuffer, Ark_NativePointer)
void impl_NavigationTransitionProxy_setIsInteractive(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NavigationTransitionProxy self = reinterpret_cast<Ark_NavigationTransitionProxy>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto isInteractiveValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Boolean isInteractiveValueTempTmpBuf = {};
        isInteractiveValueTempTmpBuf.tag = isInteractiveValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((isInteractiveValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            isInteractiveValueTempTmpBuf.value = thisDeserializer.readBoolean();
        }
        Opt_Boolean isInteractiveValueTemp = isInteractiveValueTempTmpBuf;;
        GetAccessors()->getNavigationTransitionProxyAccessor()->setIsInteractive(self, static_cast<Opt_Boolean*>(&isInteractiveValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavigationTransitionProxy_setIsInteractive, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_NavPathInfo_construct(const KStringPtr& name, KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Object paramValueTemp = static_cast<Ark_Object>(thisDeserializer.readObject());;
        const auto onPopValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Callback_PopInfo_Void onPopValueTempTmpBuf = {};
        onPopValueTempTmpBuf.tag = onPopValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((onPopValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            onPopValueTempTmpBuf.value = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_PopInfo data)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_POPINFO_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_PopInfo data)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_POPINFO_VOID))))};
        }
        Opt_Callback_PopInfo_Void onPopValueTemp = onPopValueTempTmpBuf;;
        return GetAccessors()->getNavPathInfoAccessor()->construct((const Ark_String*) (&name), static_cast<Ark_Object*>(&paramValueTemp), static_cast<Opt_Callback_PopInfo_Void*>(&onPopValueTemp));
}
KOALA_INTEROP_3(NavPathInfo_construct, Ark_NativePointer, KStringPtr, KSerializerBuffer, int32_t)
Ark_NativePointer impl_NavPathInfo_getFinalizer() {
        return GetAccessors()->getNavPathInfoAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(NavPathInfo_getFinalizer, Ark_NativePointer)
Ark_String impl_NavPathInfo_getName(Ark_NativePointer thisPtr) {
        Ark_NavPathInfo self = reinterpret_cast<Ark_NavPathInfo>(thisPtr);
        return GetAccessors()->getNavPathInfoAccessor()->getName(self);
}
KOALA_INTEROP_1(NavPathInfo_getName, KStringPtr, Ark_NativePointer)
void impl_NavPathInfo_setName(Ark_NativePointer thisPtr, const KStringPtr& name) {
        Ark_NavPathInfo self = reinterpret_cast<Ark_NavPathInfo>(thisPtr);
        GetAccessors()->getNavPathInfoAccessor()->setName(self, (const Ark_String*) (&name));
}
KOALA_INTEROP_V2(NavPathInfo_setName, Ark_NativePointer, KStringPtr)
KInteropReturnBuffer impl_NavPathInfo_getParam(Ark_NativePointer thisPtr) {
        Ark_NavPathInfo self = reinterpret_cast<Ark_NavPathInfo>(thisPtr);
        const auto &retValue = GetAccessors()->getNavPathInfoAccessor()->getParam(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeObject(retValueTmpValue);
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(NavPathInfo_getParam, KInteropReturnBuffer, Ark_NativePointer)
void impl_NavPathInfo_setParam(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NavPathInfo self = reinterpret_cast<Ark_NavPathInfo>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto paramValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Object paramValueTempTmpBuf = {};
        paramValueTempTmpBuf.tag = paramValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((paramValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            paramValueTempTmpBuf.value = static_cast<Ark_Object>(thisDeserializer.readObject());
        }
        Opt_Object paramValueTemp = paramValueTempTmpBuf;;
        GetAccessors()->getNavPathInfoAccessor()->setParam(self, static_cast<Opt_Object*>(&paramValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavPathInfo_setParam, Ark_NativePointer, KSerializerBuffer, int32_t)
KInteropReturnBuffer impl_NavPathInfo_getOnPop(Ark_NativePointer thisPtr) {
        Ark_NavPathInfo self = reinterpret_cast<Ark_NavPathInfo>(thisPtr);
        const auto &retValue = GetAccessors()->getNavPathInfoAccessor()->getOnPop(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeCallbackResource(retValueTmpValue.resource);
            _retSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(retValueTmpValue.call));
            _retSerializer.writePointer(reinterpret_cast<Ark_NativePointer>(retValueTmpValue.callSync));
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(NavPathInfo_getOnPop, KInteropReturnBuffer, Ark_NativePointer)
void impl_NavPathInfo_setOnPop(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NavPathInfo self = reinterpret_cast<Ark_NavPathInfo>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto onPopValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Callback_PopInfo_Void onPopValueTempTmpBuf = {};
        onPopValueTempTmpBuf.tag = onPopValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((onPopValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            onPopValueTempTmpBuf.value = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_PopInfo data)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_POPINFO_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_PopInfo data)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_POPINFO_VOID))))};
        }
        Opt_Callback_PopInfo_Void onPopValueTemp = onPopValueTempTmpBuf;;
        GetAccessors()->getNavPathInfoAccessor()->setOnPop(self, static_cast<Opt_Callback_PopInfo_Void*>(&onPopValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavPathInfo_setOnPop, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_NavPathStack_construct() {
        return GetAccessors()->getNavPathStackAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(NavPathStack_construct, Ark_NativePointer)
Ark_NativePointer impl_NavPathStack_getFinalizer() {
        return GetAccessors()->getNavPathStackAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(NavPathStack_getFinalizer, Ark_NativePointer)
void impl_NavPathStack_pushPath0(Ark_NativePointer thisPtr, Ark_NativePointer info, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NavPathStack self = reinterpret_cast<Ark_NavPathStack>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto animatedValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Boolean animatedValueTempTmpBuf = {};
        animatedValueTempTmpBuf.tag = animatedValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((animatedValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            animatedValueTempTmpBuf.value = thisDeserializer.readBoolean();
        }
        Opt_Boolean animatedValueTemp = animatedValueTempTmpBuf;;
        GetAccessors()->getNavPathStackAccessor()->pushPath0(self, static_cast<Ark_NavPathInfo>(info), static_cast<Opt_Boolean*>(&animatedValueTemp));
}
KOALA_INTEROP_DIRECT_V4(NavPathStack_pushPath0, Ark_NativePointer, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavPathStack_pushPath1(Ark_NativePointer thisPtr, Ark_NativePointer info, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NavPathStack self = reinterpret_cast<Ark_NavPathStack>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto optionsValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_NavigationOptions optionsValueTempTmpBuf = {};
        optionsValueTempTmpBuf.tag = optionsValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((optionsValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            optionsValueTempTmpBuf.value = NavigationOptions_serializer::read(thisDeserializer);
        }
        Opt_NavigationOptions optionsValueTemp = optionsValueTempTmpBuf;;
        GetAccessors()->getNavPathStackAccessor()->pushPath1(self, static_cast<Ark_NavPathInfo>(info), static_cast<Opt_NavigationOptions*>(&optionsValueTemp));
}
KOALA_INTEROP_DIRECT_V4(NavPathStack_pushPath1, Ark_NativePointer, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavPathStack_pushDestination0(KVMContext vmContext, Ark_NativePointer thisPtr, Ark_NativePointer info, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NavPathStack self = reinterpret_cast<Ark_NavPathStack>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto animatedValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Boolean animatedValueTempTmpBuf = {};
        animatedValueTempTmpBuf.tag = animatedValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((animatedValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            animatedValueTempTmpBuf.value = thisDeserializer.readBoolean();
        }
        Opt_Boolean animatedValueTemp = animatedValueTempTmpBuf;;
        Callback_Opt_Array_String_Void outputArgumentForReturningPromiseValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Opt_Array_String error)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_OPT_ARRAY_STRING_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Opt_Array_String error)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_OPT_ARRAY_STRING_VOID))))};;
        GetAccessors()->getNavPathStackAccessor()->pushDestination0(reinterpret_cast<Ark_VMContext>(vmContext), GetAsyncWorker(), self, static_cast<Ark_NavPathInfo>(info), static_cast<Opt_Boolean*>(&animatedValueTemp), static_cast<Callback_Opt_Array_String_Void*>(&outputArgumentForReturningPromiseValueTemp));
}
KOALA_INTEROP_CTX_V4(NavPathStack_pushDestination0, Ark_NativePointer, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavPathStack_pushDestination1(KVMContext vmContext, Ark_NativePointer thisPtr, Ark_NativePointer info, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NavPathStack self = reinterpret_cast<Ark_NavPathStack>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto optionsValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_NavigationOptions optionsValueTempTmpBuf = {};
        optionsValueTempTmpBuf.tag = optionsValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((optionsValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            optionsValueTempTmpBuf.value = NavigationOptions_serializer::read(thisDeserializer);
        }
        Opt_NavigationOptions optionsValueTemp = optionsValueTempTmpBuf;;
        Callback_Opt_Array_String_Void outputArgumentForReturningPromiseValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Opt_Array_String error)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_OPT_ARRAY_STRING_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Opt_Array_String error)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_OPT_ARRAY_STRING_VOID))))};;
        GetAccessors()->getNavPathStackAccessor()->pushDestination1(reinterpret_cast<Ark_VMContext>(vmContext), GetAsyncWorker(), self, static_cast<Ark_NavPathInfo>(info), static_cast<Opt_NavigationOptions*>(&optionsValueTemp), static_cast<Callback_Opt_Array_String_Void*>(&outputArgumentForReturningPromiseValueTemp));
}
KOALA_INTEROP_CTX_V4(NavPathStack_pushDestination1, Ark_NativePointer, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavPathStack_pushPathByName0(Ark_NativePointer thisPtr, const KStringPtr& name, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NavPathStack self = reinterpret_cast<Ark_NavPathStack>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Object paramValueTemp = static_cast<Ark_Object>(thisDeserializer.readObject());;
        const auto animatedValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Boolean animatedValueTempTmpBuf = {};
        animatedValueTempTmpBuf.tag = animatedValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((animatedValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            animatedValueTempTmpBuf.value = thisDeserializer.readBoolean();
        }
        Opt_Boolean animatedValueTemp = animatedValueTempTmpBuf;;
        GetAccessors()->getNavPathStackAccessor()->pushPathByName0(self, (const Ark_String*) (&name), static_cast<Ark_Object*>(&paramValueTemp), static_cast<Opt_Boolean*>(&animatedValueTemp));
}
KOALA_INTEROP_V4(NavPathStack_pushPathByName0, Ark_NativePointer, KStringPtr, KSerializerBuffer, int32_t)
void impl_NavPathStack_pushPathByName1(Ark_NativePointer thisPtr, const KStringPtr& name, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NavPathStack self = reinterpret_cast<Ark_NavPathStack>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Object paramValueTemp = static_cast<Ark_Object>(thisDeserializer.readObject());;
        Callback_PopInfo_Void onPopValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_PopInfo data)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_POPINFO_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_PopInfo data)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_POPINFO_VOID))))};;
        const auto animatedValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Boolean animatedValueTempTmpBuf = {};
        animatedValueTempTmpBuf.tag = animatedValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((animatedValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            animatedValueTempTmpBuf.value = thisDeserializer.readBoolean();
        }
        Opt_Boolean animatedValueTemp = animatedValueTempTmpBuf;;
        GetAccessors()->getNavPathStackAccessor()->pushPathByName1(self, (const Ark_String*) (&name), static_cast<Ark_Object*>(&paramValueTemp), static_cast<Callback_PopInfo_Void*>(&onPopValueTemp), static_cast<Opt_Boolean*>(&animatedValueTemp));
}
KOALA_INTEROP_V4(NavPathStack_pushPathByName1, Ark_NativePointer, KStringPtr, KSerializerBuffer, int32_t)
void impl_NavPathStack_pushDestinationByName0(KVMContext vmContext, Ark_NativePointer thisPtr, const KStringPtr& name, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NavPathStack self = reinterpret_cast<Ark_NavPathStack>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Object paramValueTemp = static_cast<Ark_Object>(thisDeserializer.readObject());;
        const auto animatedValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Boolean animatedValueTempTmpBuf = {};
        animatedValueTempTmpBuf.tag = animatedValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((animatedValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            animatedValueTempTmpBuf.value = thisDeserializer.readBoolean();
        }
        Opt_Boolean animatedValueTemp = animatedValueTempTmpBuf;;
        Callback_Opt_Array_String_Void outputArgumentForReturningPromiseValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Opt_Array_String error)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_OPT_ARRAY_STRING_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Opt_Array_String error)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_OPT_ARRAY_STRING_VOID))))};;
        GetAccessors()->getNavPathStackAccessor()->pushDestinationByName0(reinterpret_cast<Ark_VMContext>(vmContext), GetAsyncWorker(), self, (const Ark_String*) (&name), static_cast<Ark_Object*>(&paramValueTemp), static_cast<Opt_Boolean*>(&animatedValueTemp), static_cast<Callback_Opt_Array_String_Void*>(&outputArgumentForReturningPromiseValueTemp));
}
KOALA_INTEROP_CTX_V4(NavPathStack_pushDestinationByName0, Ark_NativePointer, KStringPtr, KSerializerBuffer, int32_t)
void impl_NavPathStack_pushDestinationByName1(KVMContext vmContext, Ark_NativePointer thisPtr, const KStringPtr& name, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NavPathStack self = reinterpret_cast<Ark_NavPathStack>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Object paramValueTemp = static_cast<Ark_Object>(thisDeserializer.readObject());;
        Callback_PopInfo_Void onPopValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_PopInfo data)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_POPINFO_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_PopInfo data)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_POPINFO_VOID))))};;
        const auto animatedValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Boolean animatedValueTempTmpBuf = {};
        animatedValueTempTmpBuf.tag = animatedValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((animatedValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            animatedValueTempTmpBuf.value = thisDeserializer.readBoolean();
        }
        Opt_Boolean animatedValueTemp = animatedValueTempTmpBuf;;
        Callback_Opt_Array_String_Void outputArgumentForReturningPromiseValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Opt_Array_String error)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_OPT_ARRAY_STRING_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Opt_Array_String error)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_OPT_ARRAY_STRING_VOID))))};;
        GetAccessors()->getNavPathStackAccessor()->pushDestinationByName1(reinterpret_cast<Ark_VMContext>(vmContext), GetAsyncWorker(), self, (const Ark_String*) (&name), static_cast<Ark_Object*>(&paramValueTemp), static_cast<Callback_PopInfo_Void*>(&onPopValueTemp), static_cast<Opt_Boolean*>(&animatedValueTemp), static_cast<Callback_Opt_Array_String_Void*>(&outputArgumentForReturningPromiseValueTemp));
}
KOALA_INTEROP_CTX_V4(NavPathStack_pushDestinationByName1, Ark_NativePointer, KStringPtr, KSerializerBuffer, int32_t)
void impl_NavPathStack_replacePath0(Ark_NativePointer thisPtr, Ark_NativePointer info, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NavPathStack self = reinterpret_cast<Ark_NavPathStack>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto animatedValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Boolean animatedValueTempTmpBuf = {};
        animatedValueTempTmpBuf.tag = animatedValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((animatedValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            animatedValueTempTmpBuf.value = thisDeserializer.readBoolean();
        }
        Opt_Boolean animatedValueTemp = animatedValueTempTmpBuf;;
        GetAccessors()->getNavPathStackAccessor()->replacePath0(self, static_cast<Ark_NavPathInfo>(info), static_cast<Opt_Boolean*>(&animatedValueTemp));
}
KOALA_INTEROP_DIRECT_V4(NavPathStack_replacePath0, Ark_NativePointer, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavPathStack_replacePath1(Ark_NativePointer thisPtr, Ark_NativePointer info, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NavPathStack self = reinterpret_cast<Ark_NavPathStack>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto optionsValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_NavigationOptions optionsValueTempTmpBuf = {};
        optionsValueTempTmpBuf.tag = optionsValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((optionsValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            optionsValueTempTmpBuf.value = NavigationOptions_serializer::read(thisDeserializer);
        }
        Opt_NavigationOptions optionsValueTemp = optionsValueTempTmpBuf;;
        GetAccessors()->getNavPathStackAccessor()->replacePath1(self, static_cast<Ark_NavPathInfo>(info), static_cast<Opt_NavigationOptions*>(&optionsValueTemp));
}
KOALA_INTEROP_DIRECT_V4(NavPathStack_replacePath1, Ark_NativePointer, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_NavPathStack_replacePathByName(Ark_NativePointer thisPtr, const KStringPtr& name, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NavPathStack self = reinterpret_cast<Ark_NavPathStack>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Object paramValueTemp = static_cast<Ark_Object>(thisDeserializer.readObject());;
        const auto animatedValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Boolean animatedValueTempTmpBuf = {};
        animatedValueTempTmpBuf.tag = animatedValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((animatedValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            animatedValueTempTmpBuf.value = thisDeserializer.readBoolean();
        }
        Opt_Boolean animatedValueTemp = animatedValueTempTmpBuf;;
        GetAccessors()->getNavPathStackAccessor()->replacePathByName(self, (const Ark_String*) (&name), static_cast<Ark_Object*>(&paramValueTemp), static_cast<Opt_Boolean*>(&animatedValueTemp));
}
KOALA_INTEROP_V4(NavPathStack_replacePathByName, Ark_NativePointer, KStringPtr, KSerializerBuffer, int32_t)
Ark_Number impl_NavPathStack_removeByIndexes(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NavPathStack self = reinterpret_cast<Ark_NavPathStack>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int32 indexesValueTempTmpBufLength = thisDeserializer.readInt32();
        Array_Number indexesValueTempTmpBuf = {};
        thisDeserializer.resizeArray<std::decay<decltype(indexesValueTempTmpBuf)>::type,
        std::decay<decltype(*indexesValueTempTmpBuf.array)>::type>(&indexesValueTempTmpBuf, indexesValueTempTmpBufLength);
        for (int indexesValueTempTmpBufBufCounterI = 0; indexesValueTempTmpBufBufCounterI < indexesValueTempTmpBufLength; indexesValueTempTmpBufBufCounterI++) {
            indexesValueTempTmpBuf.array[indexesValueTempTmpBufBufCounterI] = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Array_Number indexesValueTemp = indexesValueTempTmpBuf;;
        return GetAccessors()->getNavPathStackAccessor()->removeByIndexes(self, static_cast<Array_Number*>(&indexesValueTemp));
}
KOALA_INTEROP_DIRECT_3(NavPathStack_removeByIndexes, KInteropNumber, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_Number impl_NavPathStack_removeByName(Ark_NativePointer thisPtr, const KStringPtr& name) {
        Ark_NavPathStack self = reinterpret_cast<Ark_NavPathStack>(thisPtr);
        return GetAccessors()->getNavPathStackAccessor()->removeByName(self, (const Ark_String*) (&name));
}
KOALA_INTEROP_2(NavPathStack_removeByName, KInteropNumber, Ark_NativePointer, KStringPtr)
Ark_Boolean impl_NavPathStack_removeByNavDestinationId(Ark_NativePointer thisPtr, const KStringPtr& navDestinationId) {
        Ark_NavPathStack self = reinterpret_cast<Ark_NavPathStack>(thisPtr);
        return GetAccessors()->getNavPathStackAccessor()->removeByNavDestinationId(self, (const Ark_String*) (&navDestinationId));
}
KOALA_INTEROP_2(NavPathStack_removeByNavDestinationId, Ark_Boolean, Ark_NativePointer, KStringPtr)
KInteropReturnBuffer impl_NavPathStack_pop0(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NavPathStack self = reinterpret_cast<Ark_NavPathStack>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto animatedValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Boolean animatedValueTempTmpBuf = {};
        animatedValueTempTmpBuf.tag = animatedValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((animatedValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            animatedValueTempTmpBuf.value = thisDeserializer.readBoolean();
        }
        Opt_Boolean animatedValueTemp = animatedValueTempTmpBuf;;
        const auto &retValue = GetAccessors()->getNavPathStackAccessor()->pop0(self, static_cast<Opt_Boolean*>(&animatedValueTemp));
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            NavPathInfo_serializer::write(_retSerializer, retValueTmpValue);
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_3(NavPathStack_pop0, KInteropReturnBuffer, Ark_NativePointer, KSerializerBuffer, int32_t)
KInteropReturnBuffer impl_NavPathStack_pop1(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NavPathStack self = reinterpret_cast<Ark_NavPathStack>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Object resultValueTemp = static_cast<Ark_Object>(thisDeserializer.readObject());;
        const auto animatedValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Boolean animatedValueTempTmpBuf = {};
        animatedValueTempTmpBuf.tag = animatedValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((animatedValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            animatedValueTempTmpBuf.value = thisDeserializer.readBoolean();
        }
        Opt_Boolean animatedValueTemp = animatedValueTempTmpBuf;;
        const auto &retValue = GetAccessors()->getNavPathStackAccessor()->pop1(self, static_cast<Ark_Object*>(&resultValueTemp), static_cast<Opt_Boolean*>(&animatedValueTemp));
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            NavPathInfo_serializer::write(_retSerializer, retValueTmpValue);
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_3(NavPathStack_pop1, KInteropReturnBuffer, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_Number impl_NavPathStack_popToName0(Ark_NativePointer thisPtr, const KStringPtr& name, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NavPathStack self = reinterpret_cast<Ark_NavPathStack>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto animatedValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Boolean animatedValueTempTmpBuf = {};
        animatedValueTempTmpBuf.tag = animatedValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((animatedValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            animatedValueTempTmpBuf.value = thisDeserializer.readBoolean();
        }
        Opt_Boolean animatedValueTemp = animatedValueTempTmpBuf;;
        return GetAccessors()->getNavPathStackAccessor()->popToName0(self, (const Ark_String*) (&name), static_cast<Opt_Boolean*>(&animatedValueTemp));
}
KOALA_INTEROP_4(NavPathStack_popToName0, KInteropNumber, Ark_NativePointer, KStringPtr, KSerializerBuffer, int32_t)
Ark_Number impl_NavPathStack_popToName1(Ark_NativePointer thisPtr, const KStringPtr& name, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NavPathStack self = reinterpret_cast<Ark_NavPathStack>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Object resultValueTemp = static_cast<Ark_Object>(thisDeserializer.readObject());;
        const auto animatedValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Boolean animatedValueTempTmpBuf = {};
        animatedValueTempTmpBuf.tag = animatedValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((animatedValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            animatedValueTempTmpBuf.value = thisDeserializer.readBoolean();
        }
        Opt_Boolean animatedValueTemp = animatedValueTempTmpBuf;;
        return GetAccessors()->getNavPathStackAccessor()->popToName1(self, (const Ark_String*) (&name), static_cast<Ark_Object*>(&resultValueTemp), static_cast<Opt_Boolean*>(&animatedValueTemp));
}
KOALA_INTEROP_4(NavPathStack_popToName1, KInteropNumber, Ark_NativePointer, KStringPtr, KSerializerBuffer, int32_t)
void impl_NavPathStack_popToIndex0(Ark_NativePointer thisPtr, KInteropNumber index, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NavPathStack self = reinterpret_cast<Ark_NavPathStack>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto animatedValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Boolean animatedValueTempTmpBuf = {};
        animatedValueTempTmpBuf.tag = animatedValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((animatedValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            animatedValueTempTmpBuf.value = thisDeserializer.readBoolean();
        }
        Opt_Boolean animatedValueTemp = animatedValueTempTmpBuf;;
        GetAccessors()->getNavPathStackAccessor()->popToIndex0(self, (const Ark_Number*) (&index), static_cast<Opt_Boolean*>(&animatedValueTemp));
}
KOALA_INTEROP_V4(NavPathStack_popToIndex0, Ark_NativePointer, KInteropNumber, KSerializerBuffer, int32_t)
void impl_NavPathStack_popToIndex1(Ark_NativePointer thisPtr, KInteropNumber index, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NavPathStack self = reinterpret_cast<Ark_NavPathStack>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Object resultValueTemp = static_cast<Ark_Object>(thisDeserializer.readObject());;
        const auto animatedValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Boolean animatedValueTempTmpBuf = {};
        animatedValueTempTmpBuf.tag = animatedValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((animatedValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            animatedValueTempTmpBuf.value = thisDeserializer.readBoolean();
        }
        Opt_Boolean animatedValueTemp = animatedValueTempTmpBuf;;
        GetAccessors()->getNavPathStackAccessor()->popToIndex1(self, (const Ark_Number*) (&index), static_cast<Ark_Object*>(&resultValueTemp), static_cast<Opt_Boolean*>(&animatedValueTemp));
}
KOALA_INTEROP_V4(NavPathStack_popToIndex1, Ark_NativePointer, KInteropNumber, KSerializerBuffer, int32_t)
Ark_Number impl_NavPathStack_moveToTop(Ark_NativePointer thisPtr, const KStringPtr& name, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NavPathStack self = reinterpret_cast<Ark_NavPathStack>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto animatedValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Boolean animatedValueTempTmpBuf = {};
        animatedValueTempTmpBuf.tag = animatedValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((animatedValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            animatedValueTempTmpBuf.value = thisDeserializer.readBoolean();
        }
        Opt_Boolean animatedValueTemp = animatedValueTempTmpBuf;;
        return GetAccessors()->getNavPathStackAccessor()->moveToTop(self, (const Ark_String*) (&name), static_cast<Opt_Boolean*>(&animatedValueTemp));
}
KOALA_INTEROP_4(NavPathStack_moveToTop, KInteropNumber, Ark_NativePointer, KStringPtr, KSerializerBuffer, int32_t)
void impl_NavPathStack_moveIndexToTop(Ark_NativePointer thisPtr, KInteropNumber index, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NavPathStack self = reinterpret_cast<Ark_NavPathStack>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto animatedValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Boolean animatedValueTempTmpBuf = {};
        animatedValueTempTmpBuf.tag = animatedValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((animatedValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            animatedValueTempTmpBuf.value = thisDeserializer.readBoolean();
        }
        Opt_Boolean animatedValueTemp = animatedValueTempTmpBuf;;
        GetAccessors()->getNavPathStackAccessor()->moveIndexToTop(self, (const Ark_Number*) (&index), static_cast<Opt_Boolean*>(&animatedValueTemp));
}
KOALA_INTEROP_V4(NavPathStack_moveIndexToTop, Ark_NativePointer, KInteropNumber, KSerializerBuffer, int32_t)
void impl_NavPathStack_clear(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NavPathStack self = reinterpret_cast<Ark_NavPathStack>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto animatedValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Boolean animatedValueTempTmpBuf = {};
        animatedValueTempTmpBuf.tag = animatedValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((animatedValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            animatedValueTempTmpBuf.value = thisDeserializer.readBoolean();
        }
        Opt_Boolean animatedValueTemp = animatedValueTempTmpBuf;;
        GetAccessors()->getNavPathStackAccessor()->clear(self, static_cast<Opt_Boolean*>(&animatedValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavPathStack_clear, Ark_NativePointer, KSerializerBuffer, int32_t)
KInteropReturnBuffer impl_NavPathStack_getAllPathName(Ark_NativePointer thisPtr) {
        Ark_NavPathStack self = reinterpret_cast<Ark_NavPathStack>(thisPtr);
        const auto &retValue = GetAccessors()->getNavPathStackAccessor()->getAllPathName(self);
        SerializerBase _retSerializer {};
        _retSerializer.writeInt32(retValue.length);
        for (int retValueCounterI = 0; retValueCounterI < retValue.length; retValueCounterI++) {
            const Ark_String retValueTmpElement = retValue.array[retValueCounterI];
            _retSerializer.writeString(retValueTmpElement);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(NavPathStack_getAllPathName, KInteropReturnBuffer, Ark_NativePointer)
KInteropReturnBuffer impl_NavPathStack_getParamByIndex(Ark_NativePointer thisPtr, KInteropNumber index) {
        Ark_NavPathStack self = reinterpret_cast<Ark_NavPathStack>(thisPtr);
        const auto &retValue = GetAccessors()->getNavPathStackAccessor()->getParamByIndex(self, (const Ark_Number*) (&index));
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeObject(retValueTmpValue);
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_2(NavPathStack_getParamByIndex, KInteropReturnBuffer, Ark_NativePointer, KInteropNumber)
KInteropReturnBuffer impl_NavPathStack_getParamByName(Ark_NativePointer thisPtr, const KStringPtr& name) {
        Ark_NavPathStack self = reinterpret_cast<Ark_NavPathStack>(thisPtr);
        const auto &retValue = GetAccessors()->getNavPathStackAccessor()->getParamByName(self, (const Ark_String*) (&name));
        SerializerBase _retSerializer {};
        _retSerializer.writeInt32(retValue.length);
        for (int retValueCounterI = 0; retValueCounterI < retValue.length; retValueCounterI++) {
            const Ark_Object retValueTmpElement = retValue.array[retValueCounterI];
            _retSerializer.writeObject(retValueTmpElement);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_2(NavPathStack_getParamByName, KInteropReturnBuffer, Ark_NativePointer, KStringPtr)
KInteropReturnBuffer impl_NavPathStack_getIndexByName(Ark_NativePointer thisPtr, const KStringPtr& name) {
        Ark_NavPathStack self = reinterpret_cast<Ark_NavPathStack>(thisPtr);
        const auto &retValue = GetAccessors()->getNavPathStackAccessor()->getIndexByName(self, (const Ark_String*) (&name));
        SerializerBase _retSerializer {};
        _retSerializer.writeInt32(retValue.length);
        for (int retValueCounterI = 0; retValueCounterI < retValue.length; retValueCounterI++) {
            const Ark_Number retValueTmpElement = retValue.array[retValueCounterI];
            _retSerializer.writeNumber(retValueTmpElement);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_2(NavPathStack_getIndexByName, KInteropReturnBuffer, Ark_NativePointer, KStringPtr)
KInteropReturnBuffer impl_NavPathStack_getParent(Ark_NativePointer thisPtr) {
        Ark_NavPathStack self = reinterpret_cast<Ark_NavPathStack>(thisPtr);
        const auto &retValue = GetAccessors()->getNavPathStackAccessor()->getParent(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            NavPathStack_serializer::write(_retSerializer, retValueTmpValue);
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(NavPathStack_getParent, KInteropReturnBuffer, Ark_NativePointer)
Ark_Number impl_NavPathStack_size(Ark_NativePointer thisPtr) {
        Ark_NavPathStack self = reinterpret_cast<Ark_NavPathStack>(thisPtr);
        return GetAccessors()->getNavPathStackAccessor()->size(self);
}
KOALA_INTEROP_DIRECT_1(NavPathStack_size, KInteropNumber, Ark_NativePointer)
void impl_NavPathStack_disableAnimation(Ark_NativePointer thisPtr, Ark_Boolean value) {
        Ark_NavPathStack self = reinterpret_cast<Ark_NavPathStack>(thisPtr);
        GetAccessors()->getNavPathStackAccessor()->disableAnimation(self, value);
}
KOALA_INTEROP_DIRECT_V2(NavPathStack_disableAnimation, Ark_NativePointer, Ark_Boolean)
void impl_NavPathStack_setInterception(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_NavPathStack self = reinterpret_cast<Ark_NavPathStack>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_NavigationInterception interceptionValueTemp = NavigationInterception_serializer::read(thisDeserializer);;
        GetAccessors()->getNavPathStackAccessor()->setInterception(self, static_cast<Ark_NavigationInterception*>(&interceptionValueTemp));
}
KOALA_INTEROP_DIRECT_V3(NavPathStack_setInterception, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_OverlayManager_construct() {
        return GetAccessors()->getOverlayManagerAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(OverlayManager_construct, Ark_NativePointer)
Ark_NativePointer impl_OverlayManager_getFinalizer() {
        return GetAccessors()->getOverlayManagerAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(OverlayManager_getFinalizer, Ark_NativePointer)
void impl_OverlayManager_stub(Ark_NativePointer thisPtr) {
        Ark_OverlayManager self = reinterpret_cast<Ark_OverlayManager>(thisPtr);
        GetAccessors()->getOverlayManagerAccessor()->stub(self);
}
KOALA_INTEROP_DIRECT_V1(OverlayManager_stub, Ark_NativePointer)
Ark_NativePointer impl_OverlayManagerOptions_construct() {
        return GetAccessors()->getOverlayManagerOptionsAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(OverlayManagerOptions_construct, Ark_NativePointer)
Ark_NativePointer impl_OverlayManagerOptions_getFinalizer() {
        return GetAccessors()->getOverlayManagerOptionsAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(OverlayManagerOptions_getFinalizer, Ark_NativePointer)
void impl_OverlayManagerOptions_stub(Ark_NativePointer thisPtr) {
        Ark_OverlayManagerOptions self = reinterpret_cast<Ark_OverlayManagerOptions>(thisPtr);
        GetAccessors()->getOverlayManagerOptionsAccessor()->stub(self);
}
KOALA_INTEROP_DIRECT_V1(OverlayManagerOptions_stub, Ark_NativePointer)
Ark_NativePointer impl_PageInfo_construct() {
        return GetAccessors()->getPageInfoAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(PageInfo_construct, Ark_NativePointer)
Ark_NativePointer impl_PageInfo_getFinalizer() {
        return GetAccessors()->getPageInfoAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(PageInfo_getFinalizer, Ark_NativePointer)
void impl_PageInfo_stub(Ark_NativePointer thisPtr) {
        Ark_PageInfo self = reinterpret_cast<Ark_PageInfo>(thisPtr);
        GetAccessors()->getPageInfoAccessor()->stub(self);
}
KOALA_INTEROP_DIRECT_V1(PageInfo_stub, Ark_NativePointer)
Ark_NativePointer impl_PromptAction_construct() {
        return GetAccessors()->getPromptActionAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(PromptAction_construct, Ark_NativePointer)
Ark_NativePointer impl_PromptAction_getFinalizer() {
        return GetAccessors()->getPromptActionAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(PromptAction_getFinalizer, Ark_NativePointer)
void impl_PromptAction_stub(Ark_NativePointer thisPtr) {
        Ark_PromptAction self = reinterpret_cast<Ark_PromptAction>(thisPtr);
        GetAccessors()->getPromptActionAccessor()->stub(self);
}
KOALA_INTEROP_DIRECT_V1(PromptAction_stub, Ark_NativePointer)
Ark_NativePointer impl_PromptActionCommonController_construct() {
        return GetAccessors()->getPromptActionCommonControllerAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(PromptActionCommonController_construct, Ark_NativePointer)
Ark_NativePointer impl_PromptActionCommonController_getFinalizer() {
        return GetAccessors()->getPromptActionCommonControllerAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(PromptActionCommonController_getFinalizer, Ark_NativePointer)
void impl_PromptActionCommonController_stub(Ark_NativePointer thisPtr) {
        Ark_PromptActionCommonController self = reinterpret_cast<Ark_PromptActionCommonController>(thisPtr);
        GetAccessors()->getPromptActionCommonControllerAccessor()->stub(self);
}
KOALA_INTEROP_DIRECT_V1(PromptActionCommonController_stub, Ark_NativePointer)
Ark_NativePointer impl_PromptActionDialogController_construct() {
        return GetAccessors()->getPromptActionDialogControllerAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(PromptActionDialogController_construct, Ark_NativePointer)
Ark_NativePointer impl_PromptActionDialogController_getFinalizer() {
        return GetAccessors()->getPromptActionDialogControllerAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(PromptActionDialogController_getFinalizer, Ark_NativePointer)
void impl_PromptActionDialogController_stub(Ark_NativePointer thisPtr) {
        Ark_PromptActionDialogController self = reinterpret_cast<Ark_PromptActionDialogController>(thisPtr);
        GetAccessors()->getPromptActionDialogControllerAccessor()->stub(self);
}
KOALA_INTEROP_DIRECT_V1(PromptActionDialogController_stub, Ark_NativePointer)
Ark_NativePointer impl_RenderingContextSettings_construct(KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto antialiasValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Boolean antialiasValueTempTmpBuf = {};
        antialiasValueTempTmpBuf.tag = antialiasValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((antialiasValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            antialiasValueTempTmpBuf.value = thisDeserializer.readBoolean();
        }
        Opt_Boolean antialiasValueTemp = antialiasValueTempTmpBuf;;
        return GetAccessors()->getRenderingContextSettingsAccessor()->construct(static_cast<Opt_Boolean*>(&antialiasValueTemp));
}
KOALA_INTEROP_DIRECT_2(RenderingContextSettings_construct, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_RenderingContextSettings_getFinalizer() {
        return GetAccessors()->getRenderingContextSettingsAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(RenderingContextSettings_getFinalizer, Ark_NativePointer)
KInteropReturnBuffer impl_RenderingContextSettings_getAntialias(Ark_NativePointer thisPtr) {
        Ark_RenderingContextSettings self = reinterpret_cast<Ark_RenderingContextSettings>(thisPtr);
        const auto &retValue = GetAccessors()->getRenderingContextSettingsAccessor()->getAntialias(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeBoolean(retValueTmpValue);
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(RenderingContextSettings_getAntialias, KInteropReturnBuffer, Ark_NativePointer)
void impl_RenderingContextSettings_setAntialias(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_RenderingContextSettings self = reinterpret_cast<Ark_RenderingContextSettings>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto antialiasValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Boolean antialiasValueTempTmpBuf = {};
        antialiasValueTempTmpBuf.tag = antialiasValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((antialiasValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            antialiasValueTempTmpBuf.value = thisDeserializer.readBoolean();
        }
        Opt_Boolean antialiasValueTemp = antialiasValueTempTmpBuf;;
        GetAccessors()->getRenderingContextSettingsAccessor()->setAntialias(self, static_cast<Opt_Boolean*>(&antialiasValueTemp));
}
KOALA_INTEROP_DIRECT_V3(RenderingContextSettings_setAntialias, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_Int32 impl_RenderServiceNode_getNodeId(const KStringPtr& nodeId) {
        return GetAccessors()->getRenderServiceNodeAccessor()->getNodeId((const Ark_String*) (&nodeId));
}
KOALA_INTEROP_1(RenderServiceNode_getNodeId, Ark_Int32, KStringPtr)
Ark_NativePointer impl_Router_construct() {
        return GetAccessors()->getRouterAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(Router_construct, Ark_NativePointer)
Ark_NativePointer impl_Router_getFinalizer() {
        return GetAccessors()->getRouterAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(Router_getFinalizer, Ark_NativePointer)
void impl_Router_stub(Ark_NativePointer thisPtr) {
        Ark_Router self = reinterpret_cast<Ark_Router>(thisPtr);
        GetAccessors()->getRouterAccessor()->stub(self);
}
KOALA_INTEROP_DIRECT_V1(Router_stub, Ark_NativePointer)
Ark_NativePointer impl_RouterPageInfo_construct() {
        return GetAccessors()->getRouterPageInfoAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(RouterPageInfo_construct, Ark_NativePointer)
Ark_NativePointer impl_RouterPageInfo_getFinalizer() {
        return GetAccessors()->getRouterPageInfoAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(RouterPageInfo_getFinalizer, Ark_NativePointer)
void impl_RouterPageInfo_stub(Ark_NativePointer thisPtr) {
        Ark_RouterPageInfo self = reinterpret_cast<Ark_RouterPageInfo>(thisPtr);
        GetAccessors()->getRouterPageInfoAccessor()->stub(self);
}
KOALA_INTEROP_DIRECT_V1(RouterPageInfo_stub, Ark_NativePointer)
Ark_Boolean impl_ScreenshotService_requestScreenshot(const KStringPtr& target, const KStringPtr& name) {
        return GetAccessors()->getScreenshotServiceAccessor()->requestScreenshot((const Ark_String*) (&target), (const Ark_String*) (&name));
}
KOALA_INTEROP_2(ScreenshotService_requestScreenshot, Ark_Boolean, KStringPtr, KStringPtr)
Ark_NativePointer impl_Scroller_construct() {
        return GetAccessors()->getScrollerAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(Scroller_construct, Ark_NativePointer)
Ark_NativePointer impl_Scroller_getFinalizer() {
        return GetAccessors()->getScrollerAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(Scroller_getFinalizer, Ark_NativePointer)
void impl_Scroller_scrollTo(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_Scroller self = reinterpret_cast<Ark_Scroller>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Type_Scroller_scrollTo_value valueValueTempTmpBuf = {};
        const Ark_Int8 valueValueTempTmpBufXOffsetTempBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_Number_String valueValueTempTmpBufXOffsetTempBuf = {};
        valueValueTempTmpBufXOffsetTempBuf.selector = valueValueTempTmpBufXOffsetTempBufUnionSelector;
        if (valueValueTempTmpBufXOffsetTempBufUnionSelector == 0) {
            valueValueTempTmpBufXOffsetTempBuf.selector = 0;
            valueValueTempTmpBufXOffsetTempBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valueValueTempTmpBufXOffsetTempBufUnionSelector == 1) {
            valueValueTempTmpBufXOffsetTempBuf.selector = 1;
            valueValueTempTmpBufXOffsetTempBuf.value1 = static_cast<Ark_String>(thisDeserializer.readString());
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBufXOffsetTempBuf has to be chosen through deserialisation.");
        }
        valueValueTempTmpBuf.xOffset = static_cast<Ark_Union_Number_String>(valueValueTempTmpBufXOffsetTempBuf);
        const Ark_Int8 valueValueTempTmpBufYOffsetTempBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_Number_String valueValueTempTmpBufYOffsetTempBuf = {};
        valueValueTempTmpBufYOffsetTempBuf.selector = valueValueTempTmpBufYOffsetTempBufUnionSelector;
        if (valueValueTempTmpBufYOffsetTempBufUnionSelector == 0) {
            valueValueTempTmpBufYOffsetTempBuf.selector = 0;
            valueValueTempTmpBufYOffsetTempBuf.value0 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (valueValueTempTmpBufYOffsetTempBufUnionSelector == 1) {
            valueValueTempTmpBufYOffsetTempBuf.selector = 1;
            valueValueTempTmpBufYOffsetTempBuf.value1 = static_cast<Ark_String>(thisDeserializer.readString());
        } else {
            INTEROP_FATAL("One of the branches for valueValueTempTmpBufYOffsetTempBuf has to be chosen through deserialisation.");
        }
        valueValueTempTmpBuf.yOffset = static_cast<Ark_Union_Number_String>(valueValueTempTmpBufYOffsetTempBuf);
        const auto valueValueTempTmpBufAnimationTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Union_ScrollAnimationOptions_Boolean valueValueTempTmpBufAnimationTempBuf = {};
        valueValueTempTmpBufAnimationTempBuf.tag = valueValueTempTmpBufAnimationTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBufAnimationTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            const Ark_Int8 valueValueTempTmpBufAnimationTempBufOptUnionSelector = thisDeserializer.readInt8();
            Ark_Union_ScrollAnimationOptions_Boolean valueValueTempTmpBufAnimationTempBufOpt = {};
            valueValueTempTmpBufAnimationTempBufOpt.selector = valueValueTempTmpBufAnimationTempBufOptUnionSelector;
            if (valueValueTempTmpBufAnimationTempBufOptUnionSelector == 0) {
                valueValueTempTmpBufAnimationTempBufOpt.selector = 0;
                valueValueTempTmpBufAnimationTempBufOpt.value0 = ScrollAnimationOptions_serializer::read(thisDeserializer);
            } else if (valueValueTempTmpBufAnimationTempBufOptUnionSelector == 1) {
                valueValueTempTmpBufAnimationTempBufOpt.selector = 1;
                valueValueTempTmpBufAnimationTempBufOpt.value1 = thisDeserializer.readBoolean();
            } else {
                INTEROP_FATAL("One of the branches for valueValueTempTmpBufAnimationTempBufOpt has to be chosen through deserialisation.");
            }
            valueValueTempTmpBufAnimationTempBuf.value = static_cast<Ark_Union_ScrollAnimationOptions_Boolean>(valueValueTempTmpBufAnimationTempBufOpt);
        }
        valueValueTempTmpBuf.animation = valueValueTempTmpBufAnimationTempBuf;
        Ark_Type_Scroller_scrollTo_value valueValueTemp = valueValueTempTmpBuf;;
        GetAccessors()->getScrollerAccessor()->scrollTo(self, static_cast<Ark_Type_Scroller_scrollTo_value*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(Scroller_scrollTo, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_Scroller_scrollPage0(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_Scroller self = reinterpret_cast<Ark_Scroller>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Literal_Boolean_next valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.next = thisDeserializer.readBoolean();
        Ark_Literal_Boolean_next valueValueTemp = valueValueTempTmpBuf;;
        GetAccessors()->getScrollerAccessor()->scrollPage0(self, static_cast<Ark_Literal_Boolean_next*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(Scroller_scrollPage0, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_Scroller_scrollPage1(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_Scroller self = reinterpret_cast<Ark_Scroller>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Literal_Boolean_next_Axis_direction valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.next = thisDeserializer.readBoolean();
        const auto valueValueTempTmpBufDirectionTempBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Axis valueValueTempTmpBufDirectionTempBuf = {};
        valueValueTempTmpBufDirectionTempBuf.tag = valueValueTempTmpBufDirectionTempBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBufDirectionTempBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valueValueTempTmpBufDirectionTempBuf.value = static_cast<Ark_Axis>(thisDeserializer.readInt32());
        }
        valueValueTempTmpBuf.direction = valueValueTempTmpBufDirectionTempBuf;
        Ark_Literal_Boolean_next_Axis_direction valueValueTemp = valueValueTempTmpBuf;;
        GetAccessors()->getScrollerAccessor()->scrollPage1(self, static_cast<Ark_Literal_Boolean_next_Axis_direction*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(Scroller_scrollPage1, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_StyledString_construct() {
        return GetAccessors()->getStyledStringAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(StyledString_construct, Ark_NativePointer)
Ark_NativePointer impl_StyledString_getFinalizer() {
        return GetAccessors()->getStyledStringAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(StyledString_getFinalizer, Ark_NativePointer)
Ark_String impl_StyledString_getString(Ark_NativePointer thisPtr) {
        Ark_StyledString self = reinterpret_cast<Ark_StyledString>(thisPtr);
        return GetAccessors()->getStyledStringAccessor()->getString(self);
}
KOALA_INTEROP_1(StyledString_getString, KStringPtr, Ark_NativePointer)
Ark_Boolean impl_StyledString_equals(Ark_NativePointer thisPtr, Ark_NativePointer other) {
        Ark_StyledString self = reinterpret_cast<Ark_StyledString>(thisPtr);
        return GetAccessors()->getStyledStringAccessor()->equals(self, static_cast<Ark_StyledString>(other));
}
KOALA_INTEROP_DIRECT_2(StyledString_equals, Ark_Boolean, Ark_NativePointer, Ark_NativePointer)
Ark_NativePointer impl_StyledString_subStyledString(Ark_NativePointer thisPtr, KInteropNumber start, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_StyledString self = reinterpret_cast<Ark_StyledString>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto lengthValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Number lengthValueTempTmpBuf = {};
        lengthValueTempTmpBuf.tag = lengthValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((lengthValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            lengthValueTempTmpBuf.value = static_cast<Ark_Number>(thisDeserializer.readNumber());
        }
        Opt_Number lengthValueTemp = lengthValueTempTmpBuf;;
        return GetAccessors()->getStyledStringAccessor()->subStyledString(self, (const Ark_Number*) (&start), static_cast<Opt_Number*>(&lengthValueTemp));
}
KOALA_INTEROP_4(StyledString_subStyledString, Ark_NativePointer, Ark_NativePointer, KInteropNumber, KSerializerBuffer, int32_t)
KInteropReturnBuffer impl_StyledString_marshalling(Ark_NativePointer styledString) {
        const auto &retValue = GetAccessors()->getStyledStringAccessor()->marshalling(static_cast<Ark_StyledString>(styledString));
        SerializerBase _retSerializer {};
        _retSerializer.writeBuffer(retValue);
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(StyledString_marshalling, KInteropReturnBuffer, Ark_NativePointer)
Ark_Number impl_StyledString_getLength(Ark_NativePointer thisPtr) {
        Ark_StyledString self = reinterpret_cast<Ark_StyledString>(thisPtr);
        return GetAccessors()->getStyledStringAccessor()->getLength(self);
}
KOALA_INTEROP_DIRECT_1(StyledString_getLength, KInteropNumber, Ark_NativePointer)
Ark_NativePointer impl_SwiperController_construct() {
        return GetAccessors()->getSwiperControllerAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(SwiperController_construct, Ark_NativePointer)
Ark_NativePointer impl_SwiperController_getFinalizer() {
        return GetAccessors()->getSwiperControllerAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(SwiperController_getFinalizer, Ark_NativePointer)
void impl_SwiperController_showNext(Ark_NativePointer thisPtr) {
        Ark_SwiperController self = reinterpret_cast<Ark_SwiperController>(thisPtr);
        GetAccessors()->getSwiperControllerAccessor()->showNext(self);
}
KOALA_INTEROP_DIRECT_V1(SwiperController_showNext, Ark_NativePointer)
void impl_SwiperController_showPrevious(Ark_NativePointer thisPtr) {
        Ark_SwiperController self = reinterpret_cast<Ark_SwiperController>(thisPtr);
        GetAccessors()->getSwiperControllerAccessor()->showPrevious(self);
}
KOALA_INTEROP_DIRECT_V1(SwiperController_showPrevious, Ark_NativePointer)
void impl_SwiperController_changeIndex(Ark_NativePointer thisPtr, KInteropNumber index, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_SwiperController self = reinterpret_cast<Ark_SwiperController>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto useAnimationValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Boolean useAnimationValueTempTmpBuf = {};
        useAnimationValueTempTmpBuf.tag = useAnimationValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((useAnimationValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            useAnimationValueTempTmpBuf.value = thisDeserializer.readBoolean();
        }
        Opt_Boolean useAnimationValueTemp = useAnimationValueTempTmpBuf;;
        GetAccessors()->getSwiperControllerAccessor()->changeIndex(self, (const Ark_Number*) (&index), static_cast<Opt_Boolean*>(&useAnimationValueTemp));
}
KOALA_INTEROP_V4(SwiperController_changeIndex, Ark_NativePointer, KInteropNumber, KSerializerBuffer, int32_t)
void impl_SwiperController_finishAnimation(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_SwiperController self = reinterpret_cast<Ark_SwiperController>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto callback_ValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Callback_Void callback_ValueTempTmpBuf = {};
        callback_ValueTempTmpBuf.tag = callback_ValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((callback_ValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            callback_ValueTempTmpBuf.value = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_VOID))))};
        }
        Opt_Callback_Void callback_ValueTemp = callback_ValueTempTmpBuf;;
        GetAccessors()->getSwiperControllerAccessor()->finishAnimation(self, static_cast<Opt_Callback_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(SwiperController_finishAnimation, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_SymbolGlyphModifier_construct(KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto srcValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Resource srcValueTempTmpBuf = {};
        srcValueTempTmpBuf.tag = srcValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((srcValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            srcValueTempTmpBuf.value = Resource_serializer::read(thisDeserializer);
        }
        Opt_Resource srcValueTemp = srcValueTempTmpBuf;;
        return GetAccessors()->getSymbolGlyphModifierAccessor()->construct(static_cast<Opt_Resource*>(&srcValueTemp));
}
KOALA_INTEROP_DIRECT_2(SymbolGlyphModifier_construct, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_SymbolGlyphModifier_getFinalizer() {
        return GetAccessors()->getSymbolGlyphModifierAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(SymbolGlyphModifier_getFinalizer, Ark_NativePointer)
Ark_NativePointer impl_TargetInfo_construct() {
        return GetAccessors()->getTargetInfoAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(TargetInfo_construct, Ark_NativePointer)
Ark_NativePointer impl_TargetInfo_getFinalizer() {
        return GetAccessors()->getTargetInfoAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(TargetInfo_getFinalizer, Ark_NativePointer)
void impl_TargetInfo_stub(Ark_NativePointer thisPtr) {
        Ark_TargetInfo self = reinterpret_cast<Ark_TargetInfo>(thisPtr);
        GetAccessors()->getTargetInfoAccessor()->stub(self);
}
KOALA_INTEROP_DIRECT_V1(TargetInfo_stub, Ark_NativePointer)
Ark_NativePointer impl_TextController_construct() {
        return GetAccessors()->getTextControllerAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(TextController_construct, Ark_NativePointer)
Ark_NativePointer impl_TextController_getFinalizer() {
        return GetAccessors()->getTextControllerAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(TextController_getFinalizer, Ark_NativePointer)
void impl_TextController_closeSelectionMenu(Ark_NativePointer thisPtr) {
        Ark_TextController self = reinterpret_cast<Ark_TextController>(thisPtr);
        GetAccessors()->getTextControllerAccessor()->closeSelectionMenu(self);
}
KOALA_INTEROP_DIRECT_V1(TextController_closeSelectionMenu, Ark_NativePointer)
void impl_TextController_setStyledString(Ark_NativePointer thisPtr, Ark_NativePointer value) {
        Ark_TextController self = reinterpret_cast<Ark_TextController>(thisPtr);
        GetAccessors()->getTextControllerAccessor()->setStyledString(self, static_cast<Ark_StyledString>(value));
}
KOALA_INTEROP_DIRECT_V2(TextController_setStyledString, Ark_NativePointer, Ark_NativePointer)
void impl_TextPickerDialog_show(KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto optionsValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_TextPickerDialogOptions optionsValueTempTmpBuf = {};
        optionsValueTempTmpBuf.tag = optionsValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((optionsValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            optionsValueTempTmpBuf.value = TextPickerDialogOptions_serializer::read(thisDeserializer);
        }
        Opt_TextPickerDialogOptions optionsValueTemp = optionsValueTempTmpBuf;;
        GetAccessors()->getTextPickerDialogAccessor()->show(static_cast<Opt_TextPickerDialogOptions*>(&optionsValueTemp));
}
KOALA_INTEROP_DIRECT_V2(TextPickerDialog_show, KSerializerBuffer, int32_t)
Ark_NativePointer impl_TextStyle_styled_string_construct(KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_TextStyleInterface valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valueValueTempTmpBuf.value = TextStyleInterface_serializer::read(thisDeserializer);
        }
        Opt_TextStyleInterface valueValueTemp = valueValueTempTmpBuf;;
        return GetAccessors()->getTextStyle_styled_stringAccessor()->construct(static_cast<Opt_TextStyleInterface*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_2(TextStyle_styled_string_construct, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_TextStyle_styled_string_getFinalizer() {
        return GetAccessors()->getTextStyle_styled_stringAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(TextStyle_styled_string_getFinalizer, Ark_NativePointer)
KInteropReturnBuffer impl_TextStyle_styled_string_getFontColor(Ark_NativePointer thisPtr) {
        Ark_TextStyle_styled_string self = reinterpret_cast<Ark_TextStyle_styled_string>(thisPtr);
        const auto &retValue = GetAccessors()->getTextStyle_styled_stringAccessor()->getFontColor(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            if (retValueTmpValue.selector == 0) {
                _retSerializer.writeInt8(0);
                const auto retValueTmpValueForIdx0 = retValueTmpValue.value0;
                _retSerializer.writeInt32(static_cast<Ark_Color>(retValueTmpValueForIdx0));
            } else if (retValueTmpValue.selector == 1) {
                _retSerializer.writeInt8(1);
                const auto retValueTmpValueForIdx1 = retValueTmpValue.value1;
                _retSerializer.writeNumber(retValueTmpValueForIdx1);
            } else if (retValueTmpValue.selector == 2) {
                _retSerializer.writeInt8(2);
                const auto retValueTmpValueForIdx2 = retValueTmpValue.value2;
                _retSerializer.writeString(retValueTmpValueForIdx2);
            } else if (retValueTmpValue.selector == 3) {
                _retSerializer.writeInt8(3);
                const auto retValueTmpValueForIdx3 = retValueTmpValue.value3;
                Resource_serializer::write(_retSerializer, retValueTmpValueForIdx3);
            }
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(TextStyle_styled_string_getFontColor, KInteropReturnBuffer, Ark_NativePointer)
KInteropReturnBuffer impl_TextStyle_styled_string_getFontFamily(Ark_NativePointer thisPtr) {
        Ark_TextStyle_styled_string self = reinterpret_cast<Ark_TextStyle_styled_string>(thisPtr);
        const auto &retValue = GetAccessors()->getTextStyle_styled_stringAccessor()->getFontFamily(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeString(retValueTmpValue);
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(TextStyle_styled_string_getFontFamily, KInteropReturnBuffer, Ark_NativePointer)
KInteropReturnBuffer impl_TextStyle_styled_string_getFontSize(Ark_NativePointer thisPtr) {
        Ark_TextStyle_styled_string self = reinterpret_cast<Ark_TextStyle_styled_string>(thisPtr);
        const auto &retValue = GetAccessors()->getTextStyle_styled_stringAccessor()->getFontSize(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeNumber(retValueTmpValue);
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(TextStyle_styled_string_getFontSize, KInteropReturnBuffer, Ark_NativePointer)
KInteropReturnBuffer impl_TextStyle_styled_string_getFontWeight(Ark_NativePointer thisPtr) {
        Ark_TextStyle_styled_string self = reinterpret_cast<Ark_TextStyle_styled_string>(thisPtr);
        const auto &retValue = GetAccessors()->getTextStyle_styled_stringAccessor()->getFontWeight(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeNumber(retValueTmpValue);
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(TextStyle_styled_string_getFontWeight, KInteropReturnBuffer, Ark_NativePointer)
KInteropReturnBuffer impl_TextStyle_styled_string_getFontStyle(Ark_NativePointer thisPtr) {
        Ark_TextStyle_styled_string self = reinterpret_cast<Ark_TextStyle_styled_string>(thisPtr);
        const auto &retValue = GetAccessors()->getTextStyle_styled_stringAccessor()->getFontStyle(self);
        SerializerBase _retSerializer {};
        if (runtimeType(retValue) != INTEROP_RUNTIME_UNDEFINED) {
            _retSerializer.writeInt8(INTEROP_RUNTIME_OBJECT);
            const auto retValueTmpValue = retValue.value;
            _retSerializer.writeInt32(static_cast<Ark_FontStyle>(retValueTmpValue));
        } else {
            _retSerializer.writeInt8(INTEROP_RUNTIME_UNDEFINED);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_1(TextStyle_styled_string_getFontStyle, KInteropReturnBuffer, Ark_NativePointer)
Ark_NativePointer impl_Theme_construct() {
        return GetAccessors()->getThemeAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(Theme_construct, Ark_NativePointer)
Ark_NativePointer impl_Theme_getFinalizer() {
        return GetAccessors()->getThemeAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(Theme_getFinalizer, Ark_NativePointer)
Ark_NativePointer impl_UICommonEvent_construct() {
        return GetAccessors()->getUICommonEventAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(UICommonEvent_construct, Ark_NativePointer)
Ark_NativePointer impl_UICommonEvent_getFinalizer() {
        return GetAccessors()->getUICommonEventAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(UICommonEvent_getFinalizer, Ark_NativePointer)
void impl_UICommonEvent_setOnClick(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_UICommonEvent self = reinterpret_cast<Ark_UICommonEvent>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto callback_ValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Callback_ClickEvent_Void callback_ValueTempTmpBuf = {};
        callback_ValueTempTmpBuf.tag = callback_ValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((callback_ValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            callback_ValueTempTmpBuf.value = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_ClickEvent data)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_CLICKEVENT_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_ClickEvent data)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_CLICKEVENT_VOID))))};
        }
        Opt_Callback_ClickEvent_Void callback_ValueTemp = callback_ValueTempTmpBuf;;
        GetAccessors()->getUICommonEventAccessor()->setOnClick(self, static_cast<Opt_Callback_ClickEvent_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(UICommonEvent_setOnClick, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_UIContext_construct() {
        return GetAccessors()->getUIContextAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(UIContext_construct, Ark_NativePointer)
Ark_NativePointer impl_UIContext_getFinalizer() {
        return GetAccessors()->getUIContextAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(UIContext_getFinalizer, Ark_NativePointer)
void impl_UIContext_stub(Ark_NativePointer thisPtr) {
        Ark_UIContext self = reinterpret_cast<Ark_UIContext>(thisPtr);
        GetAccessors()->getUIContextAccessor()->stub(self);
}
KOALA_INTEROP_DIRECT_V1(UIContext_stub, Ark_NativePointer)
Ark_NativePointer impl_UIExtensionProxy_construct() {
        return GetAccessors()->getUIExtensionProxyAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(UIExtensionProxy_construct, Ark_NativePointer)
Ark_NativePointer impl_UIExtensionProxy_getFinalizer() {
        return GetAccessors()->getUIExtensionProxyAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(UIExtensionProxy_getFinalizer, Ark_NativePointer)
void impl_UIExtensionProxy_send(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_UIExtensionProxy self = reinterpret_cast<Ark_UIExtensionProxy>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int32 dataValueTempTmpBufSizeVar = thisDeserializer.readInt32();
        Map_String_Object dataValueTempTmpBuf = {};
        thisDeserializer.resizeMap<Map_String_Object, Ark_String, Ark_Object>(&dataValueTempTmpBuf, dataValueTempTmpBufSizeVar);
        for (int dataValueTempTmpBufIVar = 0; dataValueTempTmpBufIVar < dataValueTempTmpBufSizeVar; dataValueTempTmpBufIVar++) {
            const Ark_String dataValueTempTmpBufKeyVar = static_cast<Ark_String>(thisDeserializer.readString());
            const Ark_Object dataValueTempTmpBufValueVar = static_cast<Ark_Object>(thisDeserializer.readObject());
            dataValueTempTmpBuf.keys[dataValueTempTmpBufIVar] = dataValueTempTmpBufKeyVar;
            dataValueTempTmpBuf.values[dataValueTempTmpBufIVar] = dataValueTempTmpBufValueVar;
        }
        Map_String_Object dataValueTemp = dataValueTempTmpBuf;;
        GetAccessors()->getUIExtensionProxyAccessor()->send(self, static_cast<Map_String_Object*>(&dataValueTemp));
}
KOALA_INTEROP_DIRECT_V3(UIExtensionProxy_send, Ark_NativePointer, KSerializerBuffer, int32_t)
KInteropReturnBuffer impl_UIExtensionProxy_sendSync(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_UIExtensionProxy self = reinterpret_cast<Ark_UIExtensionProxy>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int32 dataValueTempTmpBufSizeVar = thisDeserializer.readInt32();
        Map_String_Object dataValueTempTmpBuf = {};
        thisDeserializer.resizeMap<Map_String_Object, Ark_String, Ark_Object>(&dataValueTempTmpBuf, dataValueTempTmpBufSizeVar);
        for (int dataValueTempTmpBufIVar = 0; dataValueTempTmpBufIVar < dataValueTempTmpBufSizeVar; dataValueTempTmpBufIVar++) {
            const Ark_String dataValueTempTmpBufKeyVar = static_cast<Ark_String>(thisDeserializer.readString());
            const Ark_Object dataValueTempTmpBufValueVar = static_cast<Ark_Object>(thisDeserializer.readObject());
            dataValueTempTmpBuf.keys[dataValueTempTmpBufIVar] = dataValueTempTmpBufKeyVar;
            dataValueTempTmpBuf.values[dataValueTempTmpBufIVar] = dataValueTempTmpBufValueVar;
        }
        Map_String_Object dataValueTemp = dataValueTempTmpBuf;;
        const auto &retValue = GetAccessors()->getUIExtensionProxyAccessor()->sendSync(self, static_cast<Map_String_Object*>(&dataValueTemp));
        SerializerBase _retSerializer {};
        _retSerializer.writeInt32(retValue.size);
        for (int32_t i = 0; i < retValue.size; i++) {
            auto retValueKeyVar = retValue.keys[i];
            auto retValueValueVar = retValue.values[i];
            _retSerializer.writeString(retValueKeyVar);
            _retSerializer.writeObject(retValueValueVar);
        }
        return _retSerializer.toReturnBuffer();
}
KOALA_INTEROP_3(UIExtensionProxy_sendSync, KInteropReturnBuffer, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_UIExtensionProxy_onAsyncReceiverRegister(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_UIExtensionProxy self = reinterpret_cast<Ark_UIExtensionProxy>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_UIExtensionProxy_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_UIExtensionProxy proxy)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_UIEXTENSIONPROXY_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_UIExtensionProxy proxy)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_UIEXTENSIONPROXY_VOID))))};;
        GetAccessors()->getUIExtensionProxyAccessor()->onAsyncReceiverRegister(self, static_cast<Callback_UIExtensionProxy_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(UIExtensionProxy_onAsyncReceiverRegister, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_UIExtensionProxy_onSyncReceiverRegister(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_UIExtensionProxy self = reinterpret_cast<Ark_UIExtensionProxy>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_UIExtensionProxy_Void callback_ValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_UIExtensionProxy proxy)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_UIEXTENSIONPROXY_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_UIExtensionProxy proxy)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_UIEXTENSIONPROXY_VOID))))};;
        GetAccessors()->getUIExtensionProxyAccessor()->onSyncReceiverRegister(self, static_cast<Callback_UIExtensionProxy_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(UIExtensionProxy_onSyncReceiverRegister, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_UIExtensionProxy_offAsyncReceiverRegister(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_UIExtensionProxy self = reinterpret_cast<Ark_UIExtensionProxy>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto callback_ValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Callback_UIExtensionProxy_Void callback_ValueTempTmpBuf = {};
        callback_ValueTempTmpBuf.tag = callback_ValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((callback_ValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            callback_ValueTempTmpBuf.value = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_UIExtensionProxy proxy)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_UIEXTENSIONPROXY_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_UIExtensionProxy proxy)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_UIEXTENSIONPROXY_VOID))))};
        }
        Opt_Callback_UIExtensionProxy_Void callback_ValueTemp = callback_ValueTempTmpBuf;;
        GetAccessors()->getUIExtensionProxyAccessor()->offAsyncReceiverRegister(self, static_cast<Opt_Callback_UIExtensionProxy_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(UIExtensionProxy_offAsyncReceiverRegister, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_UIExtensionProxy_offSyncReceiverRegister(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_UIExtensionProxy self = reinterpret_cast<Ark_UIExtensionProxy>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto callback_ValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Callback_UIExtensionProxy_Void callback_ValueTempTmpBuf = {};
        callback_ValueTempTmpBuf.tag = callback_ValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((callback_ValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            callback_ValueTempTmpBuf.value = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_UIExtensionProxy proxy)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_UIEXTENSIONPROXY_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_UIExtensionProxy proxy)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_UIEXTENSIONPROXY_VOID))))};
        }
        Opt_Callback_UIExtensionProxy_Void callback_ValueTemp = callback_ValueTempTmpBuf;;
        GetAccessors()->getUIExtensionProxyAccessor()->offSyncReceiverRegister(self, static_cast<Opt_Callback_UIExtensionProxy_Void*>(&callback_ValueTemp));
}
KOALA_INTEROP_DIRECT_V3(UIExtensionProxy_offSyncReceiverRegister, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_UIInspector_construct() {
        return GetAccessors()->getUIInspectorAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(UIInspector_construct, Ark_NativePointer)
Ark_NativePointer impl_UIInspector_getFinalizer() {
        return GetAccessors()->getUIInspectorAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(UIInspector_getFinalizer, Ark_NativePointer)
void impl_UIInspector_stub(Ark_NativePointer thisPtr) {
        Ark_UIInspector self = reinterpret_cast<Ark_UIInspector>(thisPtr);
        GetAccessors()->getUIInspectorAccessor()->stub(self);
}
KOALA_INTEROP_DIRECT_V1(UIInspector_stub, Ark_NativePointer)
Ark_NativePointer impl_UIObserver_construct() {
        return GetAccessors()->getUIObserverAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(UIObserver_construct, Ark_NativePointer)
Ark_NativePointer impl_UIObserver_getFinalizer() {
        return GetAccessors()->getUIObserverAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(UIObserver_getFinalizer, Ark_NativePointer)
void impl_UIObserver_stub(Ark_NativePointer thisPtr) {
        Ark_UIObserver self = reinterpret_cast<Ark_UIObserver>(thisPtr);
        GetAccessors()->getUIObserverAccessor()->stub(self);
}
KOALA_INTEROP_DIRECT_V1(UIObserver_stub, Ark_NativePointer)
Ark_NativePointer impl_UrlStyle_construct(const KStringPtr& url) {
        return GetAccessors()->getUrlStyleAccessor()->construct((const Ark_String*) (&url));
}
KOALA_INTEROP_1(UrlStyle_construct, Ark_NativePointer, KStringPtr)
Ark_NativePointer impl_UrlStyle_getFinalizer() {
        return GetAccessors()->getUrlStyleAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(UrlStyle_getFinalizer, Ark_NativePointer)
Ark_String impl_UrlStyle_getUrl(Ark_NativePointer thisPtr) {
        Ark_UrlStyle self = reinterpret_cast<Ark_UrlStyle>(thisPtr);
        return GetAccessors()->getUrlStyleAccessor()->getUrl(self);
}
KOALA_INTEROP_1(UrlStyle_getUrl, KStringPtr, Ark_NativePointer)
Ark_NativePointer impl_Want_construct() {
        return GetAccessors()->getWantAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(Want_construct, Ark_NativePointer)
Ark_NativePointer impl_Want_getFinalizer() {
        return GetAccessors()->getWantAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(Want_getFinalizer, Ark_NativePointer)
void impl_Want_stub(Ark_NativePointer thisPtr) {
        Ark_Want self = reinterpret_cast<Ark_Want>(thisPtr);
        GetAccessors()->getWantAccessor()->stub(self);
}
KOALA_INTEROP_DIRECT_V1(Want_stub, Ark_NativePointer)
Ark_NativePointer impl_WebResourceResponse_construct() {
        return GetAccessors()->getWebResourceResponseAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(WebResourceResponse_construct, Ark_NativePointer)
Ark_NativePointer impl_WebResourceResponse_getFinalizer() {
        return GetAccessors()->getWebResourceResponseAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(WebResourceResponse_getFinalizer, Ark_NativePointer)
void impl_WebResourceResponse_setResponseData(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_WebResourceResponse self = reinterpret_cast<Ark_WebResourceResponse>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const Ark_Int8 dataValueTempTmpBufUnionSelector = thisDeserializer.readInt8();
        Ark_Union_String_Number_Resource_Buffer dataValueTempTmpBuf = {};
        dataValueTempTmpBuf.selector = dataValueTempTmpBufUnionSelector;
        if (dataValueTempTmpBufUnionSelector == 0) {
            dataValueTempTmpBuf.selector = 0;
            dataValueTempTmpBuf.value0 = static_cast<Ark_String>(thisDeserializer.readString());
        } else if (dataValueTempTmpBufUnionSelector == 1) {
            dataValueTempTmpBuf.selector = 1;
            dataValueTempTmpBuf.value1 = static_cast<Ark_Number>(thisDeserializer.readNumber());
        } else if (dataValueTempTmpBufUnionSelector == 2) {
            dataValueTempTmpBuf.selector = 2;
            dataValueTempTmpBuf.value2 = Resource_serializer::read(thisDeserializer);
        } else if (dataValueTempTmpBufUnionSelector == 3) {
            dataValueTempTmpBuf.selector = 3;
            dataValueTempTmpBuf.value3 = static_cast<Ark_Buffer>(thisDeserializer.readBuffer());
        } else {
            INTEROP_FATAL("One of the branches for dataValueTempTmpBuf has to be chosen through deserialisation.");
        }
        Ark_Union_String_Number_Resource_Buffer dataValueTemp = static_cast<Ark_Union_String_Number_Resource_Buffer>(dataValueTempTmpBuf);;
        GetAccessors()->getWebResourceResponseAccessor()->setResponseData(self, static_cast<Ark_Union_String_Number_Resource_Buffer*>(&dataValueTemp));
}
KOALA_INTEROP_DIRECT_V3(WebResourceResponse_setResponseData, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_window_SystemBarStyle_construct() {
        return GetAccessors()->getWindow_SystemBarStyleAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(window_SystemBarStyle_construct, Ark_NativePointer)
Ark_NativePointer impl_window_SystemBarStyle_getFinalizer() {
        return GetAccessors()->getWindow_SystemBarStyleAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(window_SystemBarStyle_getFinalizer, Ark_NativePointer)
Ark_NativePointer impl_XComponentController_construct() {
        return GetAccessors()->getXComponentControllerAccessor()->construct();
}
KOALA_INTEROP_DIRECT_0(XComponentController_construct, Ark_NativePointer)
Ark_NativePointer impl_XComponentController_getFinalizer() {
        return GetAccessors()->getXComponentControllerAccessor()->getFinalizer();
}
KOALA_INTEROP_DIRECT_0(XComponentController_getFinalizer, Ark_NativePointer)
void impl_XComponentController_getXComponentContext(Ark_NativePointer thisPtr) {
        Ark_XComponentController self = reinterpret_cast<Ark_XComponentController>(thisPtr);
        GetAccessors()->getXComponentControllerAccessor()->getXComponentContext(self);
}
KOALA_INTEROP_V1(XComponentController_getXComponentContext, Ark_NativePointer)
void impl_XComponentController_setXComponentSurfaceSize(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_XComponentController self = reinterpret_cast<Ark_XComponentController>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Ark_Literal_Number_surfaceHeight_surfaceWidth valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.surfaceWidth = static_cast<Ark_Number>(thisDeserializer.readNumber());
        valueValueTempTmpBuf.surfaceHeight = static_cast<Ark_Number>(thisDeserializer.readNumber());
        Ark_Literal_Number_surfaceHeight_surfaceWidth valueValueTemp = valueValueTempTmpBuf;;
        GetAccessors()->getXComponentControllerAccessor()->setXComponentSurfaceSize(self, static_cast<Ark_Literal_Number_surfaceHeight_surfaceWidth*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V3(XComponentController_setXComponentSurfaceSize, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_XComponentController_stopImageAnalyzer(Ark_NativePointer thisPtr) {
        Ark_XComponentController self = reinterpret_cast<Ark_XComponentController>(thisPtr);
        GetAccessors()->getXComponentControllerAccessor()->stopImageAnalyzer(self);
}
KOALA_INTEROP_DIRECT_V1(XComponentController_stopImageAnalyzer, Ark_NativePointer)
Ark_NativePointer impl_XComponentController_getOnSurfaceCreated(Ark_NativePointer thisPtr) {
        Ark_XComponentController self = reinterpret_cast<Ark_XComponentController>(thisPtr);
        [[maybe_unused]] const auto &_api_call_result = GetAccessors()->getXComponentControllerAccessor()->getOnSurfaceCreated(self);
        // TODO: Value serialization needs to be implemented
        return {};
}
KOALA_INTEROP_DIRECT_1(XComponentController_getOnSurfaceCreated, Ark_NativePointer, Ark_NativePointer)
void impl_XComponentController_setOnSurfaceCreated(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_XComponentController self = reinterpret_cast<Ark_XComponentController>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_String_Void onSurfaceCreatedValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_String surfaceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_STRING_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_String surfaceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_STRING_VOID))))};;
        GetAccessors()->getXComponentControllerAccessor()->setOnSurfaceCreated(self, static_cast<Callback_String_Void*>(&onSurfaceCreatedValueTemp));
}
KOALA_INTEROP_DIRECT_V3(XComponentController_setOnSurfaceCreated, Ark_NativePointer, KSerializerBuffer, int32_t)
Ark_NativePointer impl_XComponentController_getOnSurfaceDestroyed(Ark_NativePointer thisPtr) {
        Ark_XComponentController self = reinterpret_cast<Ark_XComponentController>(thisPtr);
        [[maybe_unused]] const auto &_api_call_result = GetAccessors()->getXComponentControllerAccessor()->getOnSurfaceDestroyed(self);
        // TODO: Value serialization needs to be implemented
        return {};
}
KOALA_INTEROP_DIRECT_1(XComponentController_getOnSurfaceDestroyed, Ark_NativePointer, Ark_NativePointer)
void impl_XComponentController_setOnSurfaceDestroyed(Ark_NativePointer thisPtr, KSerializerBuffer thisArray, int32_t thisLength) {
        Ark_XComponentController self = reinterpret_cast<Ark_XComponentController>(thisPtr);
        DeserializerBase thisDeserializer(thisArray, thisLength);
        Callback_String_Void onSurfaceDestroyedValueTemp = {thisDeserializer.readCallbackResource(), reinterpret_cast<void(*)(const Ark_Int32 resourceId, const Ark_String surfaceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCaller(KIND_CALLBACK_STRING_VOID)))), reinterpret_cast<void(*)(Ark_VMContext vmContext, const Ark_Int32 resourceId, const Ark_String surfaceId)>(thisDeserializer.readPointerOrDefault(reinterpret_cast<Ark_NativePointer>(getManagedCallbackCallerSync(KIND_CALLBACK_STRING_VOID))))};;
        GetAccessors()->getXComponentControllerAccessor()->setOnSurfaceDestroyed(self, static_cast<Callback_String_Void*>(&onSurfaceDestroyedValueTemp));
}
KOALA_INTEROP_DIRECT_V3(XComponentController_setOnSurfaceDestroyed, Ark_NativePointer, KSerializerBuffer, int32_t)
void impl_GlobalScope_toIncludeDouble(KSerializerBuffer thisArray, int32_t thisLength) {
        DeserializerBase thisDeserializer(thisArray, thisLength);
        const auto valueValueTempTmpBuf_runtimeType = static_cast<Ark_RuntimeType>(thisDeserializer.readInt8());
        Opt_Float64 valueValueTempTmpBuf = {};
        valueValueTempTmpBuf.tag = valueValueTempTmpBuf_runtimeType == INTEROP_RUNTIME_UNDEFINED ? INTEROP_TAG_UNDEFINED : INTEROP_TAG_OBJECT;
        if ((valueValueTempTmpBuf_runtimeType) != (INTEROP_RUNTIME_UNDEFINED)) {
            valueValueTempTmpBuf.value = thisDeserializer.readFloat64();
        }
        Opt_Float64 valueValueTemp = valueValueTempTmpBuf;;
        GetAccessors()->getGlobalScopeAccessor()->toIncludeDouble(static_cast<Opt_Float64*>(&valueValueTemp));
}
KOALA_INTEROP_DIRECT_V2(GlobalScope_toIncludeDouble, KSerializerBuffer, int32_t)