package ohos.peernodes

import std.collection.*
import std.time.DateTime

//Handwritten.cj
public type CustomNodeBuilder = (parentNode: Int64) -> Int64


public interface AttributeModifier<T> {}
public interface GestureModifier {}
public interface ContentModifier<T> {}

public func hookButtonContentModifier(
    receiver: Object, value: ContentModifier<Object>) {}
public func hookCheckBoxContentModifier(
    receiver: Object, value: ContentModifier<Object>) {}
public func hookDataPanelContentModifier(
    receiver: Object, value: ContentModifier<Object>) {}
public func hookGaugeContentModifier(
    receiver: Object, value: ContentModifier<Object>) {}
public func hookLoadingProgressContentModifier(
    receiver: Object, value: ContentModifier<Object>) {}
public func hookProgressContentModifier(
    receiver: Object, value: ContentModifier<Object>) {}
public func hookRadioContentModifier(
    receiver: Object, value: ContentModifier<Object>) {}
public func hookRatingContentModifier(
    receiver: Object, value: ContentModifier<Object>) {}
public func hookSelectContentModifier(
    receiver: Object, value: ContentModifier<MenuItemConfiguration>) {}
public func hookSliderContentModifier(
    receiver: Object, value: ContentModifier<Object>) {}
public func hookTextClockContentModifier(
    receiver: Object, value: ContentModifier<Object>) {}
public func hookTextTimerContentModifier(
    receiver: Object, value: ContentModifier<Object>) {}
public func hookToggleContentModifier(
    receiver: Object, value: ContentModifier<Object>) {}
public func hookGestureModifier(receiver: Object, value: Option<GestureModifier>) {}
public func hookStateStyleImpl(receiver: Any, value: Any) {}
public func hookId(component: Object, value: Option<String>) {}

// GlobalScope
public open class GlobalScope {
    public static func toIncludeDouble(value: Option<Float64>): Unit {
        let value_casted: Option<Float64> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
        GlobalScope.toIncludeDouble_serialize(value_casted)
        return
    }
    static func toIncludeDouble_serialize(value: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            thisSerializer.writeFloat64(valueTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._GlobalScope_toIncludeDouble(thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}

//global_resource
public interface ResourceInterfaces {
    public mut open prop bundleName: String
    public mut open prop moduleName: String
    public mut open prop id: Float64
    public mut open prop params: Option<ArrayList<String>>
    public mut open prop type_: Option<Float64>
}
public open class Resource <: ResourceInterfaces {
    private var bundleName_container: String
    public mut open prop bundleName: String
    {
        get() {
            return bundleName_container
        }
        set(bundleName) {
            bundleName_container = bundleName
        }
    }
    private var moduleName_container: String
    public mut open prop moduleName: String
    {
        get() {
            return moduleName_container
        }
        set(moduleName) {
            moduleName_container = moduleName
        }
    }
    private var id_container: Float64
    public mut open prop id: Float64
    {
        get() {
            return id_container
        }
        set(id) {
            id_container = id
        }
    }
    private var params_container: Option<ArrayList<String>>
    public mut open prop params: Option<ArrayList<String>>
    {
        get() {
            return params_container
        }
        set(params) {
            params_container = params
        }
    }
    private var type_container: Option<Float64>
    public mut open prop type_: Option<Float64>
    {
        get() {
            return type_container
        }
        set(type_) {
            type_container = type_
        }
    }
    init(bundleName: String, moduleName: String, id: Float64, params: Option<ArrayList<String>>, type_: Option<Float64>) {
        this.bundleName_container = bundleName
        this.moduleName_container = moduleName
        this.id_container = id
        this.params_container = params
        this.type_container = type_
    }
}
public open class global_resource_Resource_serializer {
    public static func write(buffer: SerializerBase, value: Resource): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForBundleName = value.bundleName
        valueSerializer.writeString(valueHolderForBundleName);
        let valueHolderForModuleName = value.moduleName
        valueSerializer.writeString(valueHolderForModuleName);
        let valueHolderForId = value.id
        valueSerializer.writeNumber(valueHolderForId);
        let valueHolderForParams = value.params
        if (let Some(valueHolderForParams) <- valueHolderForParams) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForParamsTmpValue = valueHolderForParams
            valueSerializer.writeInt32(Int32(valueHolderForParamsTmpValue.size));
            for (valueHolderForParamsTmpValueCounterI in 0..valueHolderForParamsTmpValue.size) {
                let valueHolderForParamsTmpValueTmpElement: String = valueHolderForParamsTmpValue[Int64(valueHolderForParamsTmpValueCounterI)]
                valueSerializer.writeString(valueHolderForParamsTmpValueTmpElement);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForType = value.type_
        if (let Some(valueHolderForType) <- valueHolderForType) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTypeTmpValue = valueHolderForType
            valueSerializer.writeNumber(valueHolderForTypeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): Resource {
        var valueDeserializer: DeserializerBase = buffer
        let bundleNameTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let moduleNameTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let idTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let paramsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var paramsTmpBuf: Option<ArrayList<String>> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(paramsTmpBuf_runtimeType))) {
            let paramsTmpBufOptLength: Int32 = valueDeserializer.readInt32()
            var paramsTmpBufOpt: ArrayList<String> = ArrayList<String>(Int64(paramsTmpBufOptLength))
            paramsTmpBufOpt = ArrayList<String>(Int64(paramsTmpBufOptLength))
            for (paramsTmpBufOptBufCounterI in 0..paramsTmpBufOptLength) {
                paramsTmpBufOpt[Int64(paramsTmpBufOptBufCounterI)] = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            }
            paramsTmpBuf = paramsTmpBufOpt
        }
        let paramsTmpResult: Option<ArrayList<String>> = paramsTmpBuf
        let typeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var typeTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(typeTmpBuf_runtimeType))) {
            typeTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let typeTmpResult: Option<Float64> = typeTmpBuf
        var value: Resource = Resource(bundleNameTmpResult, moduleNameTmpResult, idTmpResult, paramsTmpResult, typeTmpResult)
        return value
    }
}

//Graphics
public interface DrawContextInterfaces {
}
public open class DrawContext <: DrawContextInterfaces {
    init() {
    }
}
public open class Matrix4 {
    init() {
    }
}
public interface FrameInterfaces {
}
public open class Frame <: FrameInterfaces {
    init() {
    }
}
public interface EdgesInterfaces<T> {
}
public open class Edges<T> <: EdgesInterfaces<T> {
    init() {
    }
}
public open class LengthMetricsUnit {
    public static var NONE: LengthMetricsUnit = LengthMetricsUnit(0)
    public var value: Int32
    init(arg0: Int32) {
        value = arg0
    }
}
public interface RoundRectInterfaces {
}
public open class RoundRect <: RoundRectInterfaces {
    init() {
    }
}
public interface CircleInterfaces {
}
public open class Circle <: CircleInterfaces {
    init() {
    }
}
public interface CommandPathInterfaces {
}
public open class CommandPath <: CommandPathInterfaces {
    init() {
    }
}
public interface ShapeMaskInterfaces {
}
public open class ShapeMask <: ShapeMaskInterfaces {
    init() {
    }
}
public interface ShapeClipInterfaces {
}
public open class ShapeClip <: ShapeClipInterfaces {
    init() {
    }
}
public interface LengthMetricsInterfaces {
}
public open class LengthMetrics <: LengthMetricsInterfaces {
    init() {
    }
}
public open class arkui_Graphics_DrawContext_serializer {
    public static func write(buffer: SerializerBase, value: DrawContext): Unit {
    }
    public static func read(buffer: DeserializerBase): DrawContext {
        var value: DrawContext = DrawContext()
        return value
    }
}
public open class arkui_Graphics_LengthMetrics_serializer {
    public static func write(buffer: SerializerBase, value: LengthMetrics): Unit {
    }
    public static func read(buffer: DeserializerBase): LengthMetrics {
        var value: LengthMetrics = LengthMetrics()
        return value
    }
}

//Content
public interface ContentInterfaces {
}
public open class Content <: ContentInterfaces {
    init() {
    }
}

//Attribute
public open class AttributeUpdaterFlag {
    public static var INITIAL: AttributeUpdaterFlag = AttributeUpdaterFlag(0)
    public static var UPDATE: AttributeUpdaterFlag = AttributeUpdaterFlag(1)
    public static var SKIP: AttributeUpdaterFlag = AttributeUpdaterFlag(2)
    public static var RESET: AttributeUpdaterFlag = AttributeUpdaterFlag(3)
    public var value: Int32
    init(arg0: Int32) {
        value = arg0
    }
}