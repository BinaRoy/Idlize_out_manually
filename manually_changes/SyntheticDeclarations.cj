package ohos.peernodes

import std.time.DateTime
internal import ohos.base.*

public type CanvasFillRule = String
public type Margin = Padding
public open class Type_SheetOptions_detents {
    public var value0: Union_SheetSize_Length
    public var value1: Option<Union_SheetSize_Length>
    public var value2: Option<Union_SheetSize_Length>
    init(arg0: Union_SheetSize_Length, arg1: Option<Union_SheetSize_Length>, arg2: Option<Union_SheetSize_Length>) {
        value0 = arg0
        value1 = arg1
        value2 = arg2
    }
}
public open class Tuple_Number_Number {
    public var value0: Float64
    public var value1: Float64
    init(arg0: Float64, arg1: Float64) {
        value0 = arg0
        value1 = arg1
    }
}
public type EdgeWidth = EdgeWidths
public open class Tuple_ResourceColor_Number {
    public var value0: ResourceColor
    public var value1: Float64
    init(arg0: ResourceColor, arg1: Float64) {
        value0 = arg0
        value1 = arg1
    }
}
public interface Literal_Alignment_alignInterfaces {
    public mut open prop align: Option<Alignment>
}
public open class Literal_Alignment_align <: Literal_Alignment_alignInterfaces {
    private var align_container: Option<Alignment>
    public mut open prop align: Option<Alignment>
    {
        get() {
            return align_container
        }
        set(align) {
            align_container = align
        }
    }
    init(align: Option<Alignment>) {
        this.align_container = align
    }
}
public type GestureType = Union_TapGestureInterface_LongPressGestureInterface
public interface Literal_Number_duration_fingers_Boolean_repeatInterfaces {
    public mut open prop fingers: Option<Float64>
    public mut open prop repeat: Option<Bool>
    public mut open prop duration: Option<Float64>
}
public open class Literal_Number_duration_fingers_Boolean_repeat <: Literal_Number_duration_fingers_Boolean_repeatInterfaces {
    private var fingers_container: Option<Float64>
    public mut open prop fingers: Option<Float64>
    {
        get() {
            return fingers_container
        }
        set(fingers) {
            fingers_container = fingers
        }
    }
    private var repeat_container: Option<Bool>
    public mut open prop repeat: Option<Bool>
    {
        get() {
            return repeat_container
        }
        set(repeat) {
            repeat_container = repeat
        }
    }
    private var duration_container: Option<Float64>
    public mut open prop duration: Option<Float64>
    {
        get() {
            return duration_container
        }
        set(duration) {
            duration_container = duration
        }
    }
    init(fingers: Option<Float64>, repeat: Option<Bool>, duration: Option<Float64>) {
        this.fingers_container = fingers
        this.repeat_container = repeat
        this.duration_container = duration
    }
}
public type DataOperation = Union_DataAddOperation_DataDeleteOperation
public type NavBar = String
public open class Tuple_Dimension_Dimension {
    public var value0: Dimension
    public var value1: Dimension
    init(arg0: Dimension, arg1: Dimension) {
        value0 = arg0
        value1 = arg1
    }
}
public interface Type_RectInterface_value_u0Interfaces {
    public mut open prop width: Option<Union_Number_String>
    public mut open prop height: Option<Union_Number_String>
    public mut open prop radius: Option<Union_Number_String_Array_Any>
}
public open class Type_RectInterface_value_u0 <: Type_RectInrterface_value_u0Interfaces {
    private var width_container: Option<Union_Number_String>
    public mut open prop width: Option<Union_Number_String>
    {
        get() {
            return width_container
        }
        set(width) {
            width_container = width
        }
    }
    private var height_container: Option<Union_Number_String>
    public mut open prop height: Option<Union_Number_String>
    {
        get() {
            return height_container
        }
        set(height) {
            height_container = height
        }
    }
    private var radius_container: Option<Union_Number_String_Array_Any>
    public mut open prop radius: Option<Union_Number_String_Array_Any>
    {
        get() {
            return radius_container
        }
        set(radius) {
            radius_container = radius
        }
    }
    init(width: Option<Union_Number_String>, height: Option<Union_Number_String>, radius: Option<Union_Number_String_Array_Any>) {
        this.width_container = width
        this.height_container = height
        this.radius_container = radius
    }
}
public interface Type_RectInterface_value_u1Interfaces {
    public mut open prop width: Option<Union_Number_String>
    public mut open prop height: Option<Union_Number_String>
    public mut open prop radiusWidth: Option<Union_Number_String>
    public mut open prop radiusHeight: Option<Union_Number_String>
}
public open class Type_RectInterface_value_u1 <: Type_RectInterface_value_u1Interfaces {
    private var width_container: Option<Union_Number_String>
    public mut open prop width: Option<Union_Number_String>
    {
        get() {
            return width_container
        }
        set(width) {
            width_container = width
        }
    }
    private var height_container: Option<Union_Number_String>
    public mut open prop height: Option<Union_Number_String>
    {
        get() {
            return height_container
        }
        set(height) {
            height_container = height
        }
    }
    private var radiusWidth_container: Option<Union_Number_String>
    public mut open prop radiusWidth: Option<Union_Number_String>
    {
        get() {
            return radiusWidth_container
        }
        set(radiusWidth) {
            radiusWidth_container = radiusWidth
        }
    }
    private var radiusHeight_container: Option<Union_Number_String>
    public mut open prop radiusHeight: Option<Union_Number_String>
    {
        get() {
            return radiusHeight_container
        }
        set(radiusHeight) {
            radiusHeight_container = radiusHeight
        }
    }
    init(width: Option<Union_Number_String>, height: Option<Union_Number_String>, radiusWidth: Option<Union_Number_String>, radiusHeight: Option<Union_Number_String>) {
        this.width_container = width
        this.height_container = height
        this.radiusWidth_container = radiusWidth
        this.radiusHeight_container = radiusHeight
    }
}
public interface Type_RectInterface_callable0_value_u0Interfaces {
    public mut open prop width: Option<Union_Number_String>
    public mut open prop height: Option<Union_Number_String>
    public mut open prop radius: Option<Union_Number_String_Array_Any>
}
public open class Type_RectInterface_callable0_value_u0 <: Type_RectInterface_callable0_value_u0Interfaces {
    private var width_container: Option<Union_Number_String>
    public mut open prop width: Option<Union_Number_String>
    {
        get() {
            return width_container
        }
        set(width) {
            width_container = width
        }
    }
    private var height_container: Option<Union_Number_String>
    public mut open prop height: Option<Union_Number_String>
    {
        get() {
            return height_container
        }
        set(height) {
            height_container = height
        }
    }
    private var radius_container: Option<Union_Number_String_Array_Any>
    public mut open prop radius: Option<Union_Number_String_Array_Any>
    {
        get() {
            return radius_container
        }
        set(radius) {
            radius_container = radius
        }
    }
    init(width: Option<Union_Number_String>, height: Option<Union_Number_String>, radius: Option<Union_Number_String_Array_Any>) {
        this.width_container = width
        this.height_container = height
        this.radius_container = radius
    }
}
public interface Type_RectInterface_callable0_value_u1Interfaces {
    public mut open prop width: Option<Union_Number_String>
    public mut open prop height: Option<Union_Number_String>
    public mut open prop radiusWidth: Option<Union_Number_String>
    public mut open prop radiusHeight: Option<Union_Number_String>
}
public open class Type_RectInterface_callable0_value_u1 <: Type_RectInterface_callable0_value_u1Interfaces {
    private var width_container: Option<Union_Number_String>
    public mut open prop width: Option<Union_Number_String>
    {
        get() {
            return width_container
        }
        set(width) {
            width_container = width
        }
    }
    private var height_container: Option<Union_Number_String>
    public mut open prop height: Option<Union_Number_String>
    {
        get() {
            return height_container
        }
        set(height) {
            height_container = height
        }
    }
    private var radiusWidth_container: Option<Union_Number_String>
    public mut open prop radiusWidth: Option<Union_Number_String>
    {
        get() {
            return radiusWidth_container
        }
        set(radiusWidth) {
            radiusWidth_container = radiusWidth
        }
    }
    private var radiusHeight_container: Option<Union_Number_String>
    public mut open prop radiusHeight: Option<Union_Number_String>
    {
        get() {
            return radiusHeight_container
        }
        set(radiusHeight) {
            radiusHeight_container = radiusHeight
        }
    }
    init(width: Option<Union_Number_String>, height: Option<Union_Number_String>, radiusWidth: Option<Union_Number_String>, radiusHeight: Option<Union_Number_String>) {
        this.width_container = width
        this.height_container = height
        this.radiusWidth_container = radiusWidth
        this.radiusHeight_container = radiusHeight
    }
}
public interface Type_Scroller_scrollTo_valueInterfaces {
    public mut open prop xOffset: Union_Number_String
    public mut open prop yOffset: Union_Number_String
    public mut open prop animation: Option<Union_ScrollAnimationOptions_Boolean>
}
public open class Type_Scroller_scrollTo_value <: Type_Scroller_scrollTo_valueInterfaces {
    private var xOffset_container: Union_Number_String
    public mut open prop xOffset: Union_Number_String
    {
        get() {
            return xOffset_container
        }
        set(xOffset) {
            xOffset_container = xOffset
        }
    }
    private var yOffset_container: Union_Number_String
    public mut open prop yOffset: Union_Number_String
    {
        get() {
            return yOffset_container
        }
        set(yOffset) {
            yOffset_container = yOffset
        }
    }
    private var animation_container: Option<Union_ScrollAnimationOptions_Boolean>
    public mut open prop animation: Option<Union_ScrollAnimationOptions_Boolean>
    {
        get() {
            return animation_container
        }
        set(animation) {
            animation_container = animation
        }
    }
    init(xOffset: Union_Number_String, yOffset: Union_Number_String, animation: Option<Union_ScrollAnimationOptions_Boolean>) {
        this.xOffset_container = xOffset
        this.yOffset_container = yOffset
        this.animation_container = animation
    }
}
public interface Literal_Boolean_nextInterfaces {
    public mut open prop next: Bool
}
public open class Literal_Boolean_next <: Literal_Boolean_nextInterfaces {
    private var next_container: Bool
    public mut open prop next: Bool
    {
        get() {
            return next_container
        }
        set(next) {
            next_container = next
        }
    }
    init(next: Bool) {
        this.next_container = next
    }
}
public interface Literal_Boolean_next_Axis_directionInterfaces {
    public mut open prop next: Bool
    public mut open prop direction: Option<Axis>
}
public open class Literal_Boolean_next_Axis_direction <: Literal_Boolean_next_Axis_directionInterfaces {
    private var next_container: Bool
    public mut open prop next: Bool
    {
        get() {
            return next_container
        }
        set(next) {
            next_container = next
        }
    }
    private var direction_container: Option<Axis>
    public mut open prop direction: Option<Axis>
    {
        get() {
            return direction_container
        }
        set(direction) {
            direction_container = direction
        }
    }
    init(next: Bool, direction: Option<Axis>) {
        this.next_container = next
        this.direction_container = direction
    }
}
public type StyledStringValue = Union_TextStyle_styled_string_DecorationStyle_BaselineOffsetStyle_LetterSpacingStyle_TextShadowStyle_GestureStyle_ImageAttachment_ParagraphStyle_LineHeightStyle_UrlStyle_CustomSpan_UserDataSpan_BackgroundColorStyle
public interface Literal_Union_String_Resource_icon_textInterfaces {
    public mut open prop icon: Option<Union_String_Resource>
    public mut open prop text: Option<Union_String_Resource>
}
public open class Literal_Union_String_Resource_icon_text <: Literal_Union_String_Resource_icon_textInterfaces {
    private var icon_container: Option<Union_String_Resource>
    public mut open prop icon: Option<Union_String_Resource>
    {
        get() {
            return icon_container
        }
        set(icon) {
            icon_container = icon
        }
    }
    private var text_container: Option<Union_String_Resource>
    public mut open prop text: Option<Union_String_Resource>
    {
        get() {
            return text_container
        }
        set(text) {
            text_container = text
        }
    }
    init(icon: Option<Union_String_Resource>, text: Option<Union_String_Resource>) {
        this.icon_container = icon
        this.text_container = text
    }
}
public open class Tuple_Number_Boolean {
    public var value0: Float64
    public var value1: Bool
    init(arg0: Float64, arg1: Bool) {
        value0 = arg0
        value1 = arg1
    }
}
public open class Tuple_Boolean_Number {
    public var value0: Option<Bool>
    public var value1: Option<Float64>
    init(arg0: Option<Bool>, arg1: Option<Float64>) {
        value0 = arg0
        value1 = arg1
    }
}
public open class Tuple_Number_String_EnumDTS {
    public var value0: Float64
    public var value1: String
    public var value2: EnumDTS
    init(arg0: Float64, arg1: String, arg2: EnumDTS) {
        value0 = arg0
        value1 = arg1
        value2 = arg2
    }
}
public open class Tuple_Number_String_Boolean_EnumDTS {
    public var value0: Float64
    public var value1: String
    public var value2: Bool
    public var value3: EnumDTS
    init(arg0: Float64, arg1: String, arg2: Bool, arg3: EnumDTS) {
        value0 = arg0
        value1 = arg1
        value2 = arg2
        value3 = arg3
    }
}
public open class Type_TestAttribute_testTupleUnion_value {
    public var value0: Union_Number_String
    public var value1: Union_Boolean_EnumDTS
    public var value2: Union_String_EnumDTS_Boolean
    init(arg0: Union_Number_String, arg1: Union_Boolean_EnumDTS, arg2: Union_String_EnumDTS_Boolean) {
        value0 = arg0
        value1 = arg1
        value2 = arg2
    }
}
public open class Tuple_BooleanInterfaceDTS {
    public var value0: BooleanInterfaceDTS
    init(arg0: BooleanInterfaceDTS) {
        value0 = arg0
    }
}
public type Length = Union_String_Number_Resource
public type ResourceColor = Union_Color_Number_String_Resource
public type PX = String
public type VP = Union_String_Number
public type FP = String
public type LPX = String
public type Percentage = String
public type Dimension = Union_String_Number_Resource
public type ResourceStr = Union_String_Resource
public interface Literal_Object_detailInterfaces {
    public mut open prop detail: Any
}
public open class Literal_Object_detail <: Literal_Object_detailInterfaces {
    private var detail_container: Any
    public mut open prop detail: Any
    {
        get() {
            return detail_container
        }
        set(detail) {
            detail_container = detail
        }
    }
    init(detail: Any) {
        this.detail_container = detail
    }
}
public interface Literal_Number_surfaceHeight_surfaceWidthInterfaces {
    public mut open prop surfaceWidth: Float64
    public mut open prop surfaceHeight: Float64
}
public open class Literal_Number_surfaceHeight_surfaceWidth <: Literal_Number_surfaceHeight_surfaceWidthInterfaces {
    private var surfaceWidth_container: Float64
    public mut open prop surfaceWidth: Float64
    {
        get() {
            return surfaceWidth_container
        }
        set(surfaceWidth) {
            surfaceWidth_container = surfaceWidth
        }
    }
    private var surfaceHeight_container: Float64
    public mut open prop surfaceHeight: Float64
    {
        get() {
            return surfaceHeight_container
        }
        set(surfaceHeight) {
            surfaceHeight_container = surfaceHeight
        }
    }
    init(surfaceWidth: Float64, surfaceHeight: Float64) {
        this.surfaceWidth_container = surfaceWidth
        this.surfaceHeight_container = surfaceHeight
    }
}
public open class Union_Number_String {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_String") }
    }
    private var value1: Option<String> = None<String>
    init(param: String) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): String {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_String") }
    }
}
public open class Union_Color_Number_String_Resource {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Color> = None<Color>
    init(param: Color) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Color {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union ResourceColor") }
    }
    private var value1: Option<Float64> = None<Float64>
    init(param: Float64) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Float64 {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union ResourceColor") }
    }
    private var value2: Option<String> = None<String>
    init(param: String) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): String {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union ResourceColor") }
    }
    private var value3: Option<Resource> = None<Resource>
    init(param: Resource) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): Resource {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union ResourceColor") }
    }
}
public open class Union_Number_ResourceStr {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_ResourceStr") }
    }
    private var value1: Option<ResourceStr> = None<ResourceStr>
    init(param: ResourceStr) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ResourceStr {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_ResourceStr") }
    }
}
public open class Union_String_Resource {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union ResourceStr") }
    }
    private var value1: Option<Resource> = None<Resource>
    init(param: Resource) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Resource {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union ResourceStr") }
    }
}
public open class Union_Number_Resource {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_Resource") }
    }
    private var value1: Option<Resource> = None<Resource>
    init(param: Resource) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Resource {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_Resource") }
    }
}
public open class Union_String_Number_Resource {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Length") }
    }
    private var value1: Option<Float64> = None<Float64>
    init(param: Float64) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Float64 {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Length") }
    }
    private var value2: Option<Resource> = None<Resource>
    init(param: Resource) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): Resource {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Length") }
    }
}
public open class Union_String_Number_CanvasGradient_CanvasPattern {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_String_Number_CanvasGradient_CanvasPattern") }
    }
    private var value1: Option<Float64> = None<Float64>
    init(param: Float64) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Float64 {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_String_Number_CanvasGradient_CanvasPattern") }
    }
    private var value2: Option<CanvasGradient> = None<CanvasGradient>
    init(param: CanvasGradient) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): CanvasGradient {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_String_Number_CanvasGradient_CanvasPattern") }
    }
    private var value3: Option<CanvasPattern> = None<CanvasPattern>
    init(param: CanvasPattern) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): CanvasPattern {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Union_String_Number_CanvasGradient_CanvasPattern") }
    }
}
public open class Union_CanvasRenderingContext2D_DrawingRenderingContext {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<CanvasRenderingContext2D> = None<CanvasRenderingContext2D>
    init(param: CanvasRenderingContext2D) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): CanvasRenderingContext2D {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_CanvasRenderingContext2D_DrawingRenderingContext") }
    }
    private var value1: Option<DrawingRenderingContext> = None<DrawingRenderingContext>
    init(param: DrawingRenderingContext) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): DrawingRenderingContext {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_CanvasRenderingContext2D_DrawingRenderingContext") }
    }
}
public open class Union_Color_String_Resource_ColoringStrategy {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Color> = None<Color>
    init(param: Color) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Color {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Color_String_Resource_ColoringStrategy") }
    }
    private var value1: Option<String> = None<String>
    init(param: String) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): String {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Color_String_Resource_ColoringStrategy") }
    }
    private var value2: Option<Resource> = None<Resource>
    init(param: Resource) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): Resource {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Color_String_Resource_ColoringStrategy") }
    }
    private var value3: Option<ColoringStrategy> = None<ColoringStrategy>
    init(param: ColoringStrategy) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): ColoringStrategy {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Union_Color_String_Resource_ColoringStrategy") }
    }
}
public open class Union_SheetSize_Length {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<SheetSize> = None<SheetSize>
    init(param: SheetSize) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): SheetSize {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_SheetSize_Length") }
    }
    private var value1: Option<Length> = None<Length>
    init(param: Length) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Length {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_SheetSize_Length") }
    }
}
public open class Union_Boolean_Resource {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Bool> = None<Bool>
    init(param: Bool) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Bool {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Boolean_Resource") }
    }
    private var value1: Option<Resource> = None<Resource>
    init(param: Resource) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Resource {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Boolean_Resource") }
    }
}
public open class Union_SheetTitleOptions_CustomBuilder {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<SheetTitleOptions> = None<SheetTitleOptions>
    init(param: SheetTitleOptions) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): SheetTitleOptions {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_SheetTitleOptions_CustomBuilder") }
    }
    private var value1: Option<CustomBuilder> = None<CustomBuilder>
    init(param: CustomBuilder) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): CustomBuilder {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_SheetTitleOptions_CustomBuilder") }
    }
}
public open class Union_Dimension_EdgeWidths_LocalizedEdgeWidths {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Dimension> = None<Dimension>
    init(param: Dimension) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Dimension {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Dimension_EdgeWidths_LocalizedEdgeWidths") }
    }
    private var value1: Option<EdgeWidths> = None<EdgeWidths>
    init(param: EdgeWidths) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): EdgeWidths {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Dimension_EdgeWidths_LocalizedEdgeWidths") }
    }
    private var value2: Option<LocalizedEdgeWidths> = None<LocalizedEdgeWidths>
    init(param: LocalizedEdgeWidths) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): LocalizedEdgeWidths {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Dimension_EdgeWidths_LocalizedEdgeWidths") }
    }
}
public open class Union_ResourceColor_EdgeColors_LocalizedEdgeColors {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ResourceColor> = None<ResourceColor>
    init(param: ResourceColor) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ResourceColor {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ResourceColor_EdgeColors_LocalizedEdgeColors") }
    }
    private var value1: Option<EdgeColors> = None<EdgeColors>
    init(param: EdgeColors) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): EdgeColors {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ResourceColor_EdgeColors_LocalizedEdgeColors") }
    }
    private var value2: Option<LocalizedEdgeColors> = None<LocalizedEdgeColors>
    init(param: LocalizedEdgeColors) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): LocalizedEdgeColors {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_ResourceColor_EdgeColors_LocalizedEdgeColors") }
    }
}
public open class Union_BorderStyle_EdgeStyles {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<BorderStyle> = None<BorderStyle>
    init(param: BorderStyle) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): BorderStyle {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_BorderStyle_EdgeStyles") }
    }
    private var value1: Option<EdgeStyles> = None<EdgeStyles>
    init(param: EdgeStyles) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): EdgeStyles {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_BorderStyle_EdgeStyles") }
    }
}
public open class Union_ShadowOptions_ShadowStyle {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ShadowOptions> = None<ShadowOptions>
    init(param: ShadowOptions) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ShadowOptions {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ShadowOptions_ShadowStyle") }
    }
    private var value1: Option<ShadowStyle> = None<ShadowStyle>
    init(param: ShadowStyle) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ShadowStyle {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ShadowOptions_ShadowStyle") }
    }
}
public open class Union_DragPreviewMode_Array_DragPreviewMode {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<DragPreviewMode> = None<DragPreviewMode>
    init(param: DragPreviewMode) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): DragPreviewMode {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_DragPreviewMode_Array_DragPreviewMode") }
    }
    private var value1: Option<ArrayList<DragPreviewMode>> = None<ArrayList<DragPreviewMode>>
    init(param: ArrayList<DragPreviewMode>) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ArrayList<DragPreviewMode> {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_DragPreviewMode_Array_DragPreviewMode") }
    }
}
public open class Union_Boolean_Number {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Bool> = None<Bool>
    init(param: Bool) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Bool {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Boolean_Number") }
    }
    private var value1: Option<Float64> = None<Float64>
    init(param: Float64) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Float64 {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Boolean_Number") }
    }
}
public open class Union_Length_LayoutPolicy {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Length> = None<Length>
    init(param: Length) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Length {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Length_LayoutPolicy") }
    }
    private var value1: Option<LayoutPolicy> = None<LayoutPolicy>
    init(param: LayoutPolicy) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): LayoutPolicy {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Length_LayoutPolicy") }
    }
}
public open class Union_Padding_Dimension {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Padding> = None<Padding>
    init(param: Padding) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Padding {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Padding_Dimension") }
    }
    private var value1: Option<Dimension> = None<Dimension>
    init(param: Dimension) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Dimension {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Padding_Dimension") }
    }
}
public open class Union_TapGestureInterface_LongPressGestureInterface {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<TapGestureInterface> = None<TapGestureInterface>
    init(param: TapGestureInterface) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): TapGestureInterface {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union GestureType") }
    }
    private var value1: Option<LongPressGestureInterface> = None<LongPressGestureInterface>
    init(param: LongPressGestureInterface) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): LongPressGestureInterface {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union GestureType") }
    }
}
public open class Union_String_Array_String {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_String_Array_String") }
    }
    private var value1: Option<ArrayList<String>> = None<ArrayList<String>>
    init(param: ArrayList<String>) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ArrayList<String> {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_String_Array_String") }
    }
}
public open class Union_DataAddOperation_DataDeleteOperation {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<DataAddOperation> = None<DataAddOperation>
    init(param: DataAddOperation) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): DataAddOperation {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union DataOperation") }
    }
    private var value1: Option<DataDeleteOperation> = None<DataDeleteOperation>
    init(param: DataDeleteOperation) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): DataDeleteOperation {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union DataOperation") }
    }
}
public open class Union_TitleHeight_Length {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<TitleHeight> = None<TitleHeight>
    init(param: TitleHeight) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): TitleHeight {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_TitleHeight_Length") }
    }
    private var value1: Option<Length> = None<Length>
    init(param: Length) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Length {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_TitleHeight_Length") }
    }
}
public open class Union_String_CustomBuilder_NavDestinationCommonTitle_NavDestinationCustomTitle {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_String_CustomBuilder_NavDestinationCommonTitle_NavDestinationCustomTitle") }
    }
    private var value1: Option<CustomBuilder> = None<CustomBuilder>
    init(param: CustomBuilder) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): CustomBuilder {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_String_CustomBuilder_NavDestinationCommonTitle_NavDestinationCustomTitle") }
    }
    private var value2: Option<NavDestinationCommonTitle> = None<NavDestinationCommonTitle>
    init(param: NavDestinationCommonTitle) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): NavDestinationCommonTitle {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_String_CustomBuilder_NavDestinationCommonTitle_NavDestinationCustomTitle") }
    }
    private var value3: Option<NavDestinationCustomTitle> = None<NavDestinationCustomTitle>
    init(param: NavDestinationCustomTitle) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): NavDestinationCustomTitle {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Union_String_CustomBuilder_NavDestinationCommonTitle_NavDestinationCustomTitle") }
    }
}
public open class Union_ResourceStr_PixelMap_SymbolGlyphModifier {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ResourceStr> = None<ResourceStr>
    init(param: ResourceStr) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ResourceStr {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_PixelMap_SymbolGlyphModifier") }
    }
    private var value1: Option<imagePixelMap> = None<imagePixelMap>
    init(param: imagePixelMap) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): imagePixelMap {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_PixelMap_SymbolGlyphModifier") }
    }
    private var value2: Option<SymbolGlyphModifier> = None<SymbolGlyphModifier>
    init(param: SymbolGlyphModifier) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): SymbolGlyphModifier {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_PixelMap_SymbolGlyphModifier") }
    }
}
public open class Union_Array_NavigationMenuItem_CustomBuilder {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ArrayList<NavigationMenuItem>> = None<ArrayList<NavigationMenuItem>>
    init(param: ArrayList<NavigationMenuItem>) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ArrayList<NavigationMenuItem> {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Array_NavigationMenuItem_CustomBuilder") }
    }
    private var value1: Option<CustomBuilder> = None<CustomBuilder>
    init(param: CustomBuilder) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): CustomBuilder {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Array_NavigationMenuItem_CustomBuilder") }
    }
}
public open class Union_NavDestinationContext_NavBar {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<NavDestinationContext> = None<NavDestinationContext>
    init(param: NavDestinationContext) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): NavDestinationContext {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_NavDestinationContext_NavBar") }
    }
    private var value1: Option<NavBar> = None<NavBar>
    init(param: NavBar) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): NavBar {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_NavDestinationContext_NavBar") }
    }
}
public open class Union_String_PixelMap_Resource_SymbolGlyphModifier {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_String_PixelMap_Resource_SymbolGlyphModifier") }
    }
    private var value1: Option<imagePixelMap> = None<imagePixelMap>
    init(param: imagePixelMap) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): imagePixelMap {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_String_PixelMap_Resource_SymbolGlyphModifier") }
    }
    private var value2: Option<Resource> = None<Resource>
    init(param: Resource) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): Resource {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_String_PixelMap_Resource_SymbolGlyphModifier") }
    }
    private var value3: Option<SymbolGlyphModifier> = None<SymbolGlyphModifier>
    init(param: SymbolGlyphModifier) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): SymbolGlyphModifier {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Union_String_PixelMap_Resource_SymbolGlyphModifier") }
    }
}
public open class Union_ResourceStr_CustomBuilder_NavigationCommonTitle_NavigationCustomTitle {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ResourceStr> = None<ResourceStr>
    init(param: ResourceStr) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ResourceStr {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_CustomBuilder_NavigationCommonTitle_NavigationCustomTitle") }
    }
    private var value1: Option<CustomBuilder> = None<CustomBuilder>
    init(param: CustomBuilder) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): CustomBuilder {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_CustomBuilder_NavigationCommonTitle_NavigationCustomTitle") }
    }
    private var value2: Option<NavigationCommonTitle> = None<NavigationCommonTitle>
    init(param: NavigationCommonTitle) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): NavigationCommonTitle {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_CustomBuilder_NavigationCommonTitle_NavigationCustomTitle") }
    }
    private var value3: Option<NavigationCustomTitle> = None<NavigationCustomTitle>
    init(param: NavigationCustomTitle) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): NavigationCustomTitle {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_CustomBuilder_NavigationCommonTitle_NavigationCustomTitle") }
    }
}
public open class Union_Array_ToolbarItem_CustomBuilder {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ArrayList<ToolbarItem>> = None<ArrayList<ToolbarItem>>
    init(param: ArrayList<ToolbarItem>) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ArrayList<ToolbarItem> {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Array_ToolbarItem_CustomBuilder") }
    }
    private var value1: Option<CustomBuilder> = None<CustomBuilder>
    init(param: CustomBuilder) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): CustomBuilder {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Array_ToolbarItem_CustomBuilder") }
    }
}
public open class Union_Number_String_Array_Any {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_String_Array_Any") }
    }
    private var value1: Option<String> = None<String>
    init(param: String) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): String {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_String_Array_Any") }
    }
    private var value2: Option<ArrayList<Any>> = None<ArrayList<Any>>
    init(param: ArrayList<Any>) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): ArrayList<Any> {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Number_String_Array_Any") }
    }
}
public open class Union_Type_RectInterface_value_u0_Type_RectInterface_value_u1 {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Type_RectInterface_value_u0> = None<Type_RectInterface_value_u0>
    init(param: Type_RectInterface_value_u0) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Type_RectInterface_value_u0 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Type_RectInterface_value_u0_Type_RectInterface_value_u1") }
    }
    private var value1: Option<Type_RectInterface_value_u1> = None<Type_RectInterface_value_u1>
    init(param: Type_RectInterface_value_u1) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Type_RectInterface_value_u1 {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Type_RectInterface_value_u0_Type_RectInterface_value_u1") }
    }
}
public open class Union_Type_RectInterface_callable0_value_u0_Type_RectInterface_callable0_value_u1 {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Type_RectInterface_callable0_value_u0> = None<Type_RectInterface_callable0_value_u0>
    init(param: Type_RectInterface_callable0_value_u0) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Type_RectInterface_callable0_value_u0 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Type_RectInterface_callable0_value_u0_Type_RectInterface_callable0_value_u1") }
    }
    private var value1: Option<Type_RectInterface_callable0_value_u1> = None<Type_RectInterface_callable0_value_u1>
    init(param: Type_RectInterface_callable0_value_u1) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Type_RectInterface_callable0_value_u1 {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Type_RectInterface_callable0_value_u0_Type_RectInterface_callable0_value_u1") }
    }
}
public open class Union_Number_String_Array_Union_Number_String {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_String_Array_Union_Number_String") }
    }
    private var value1: Option<String> = None<String>
    init(param: String) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): String {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_String_Array_Union_Number_String") }
    }
    private var value2: Option<ArrayList<Union_Number_String>> = None<ArrayList<Union_Number_String>>
    init(param: ArrayList<Union_Number_String>) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): ArrayList<Union_Number_String> {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Number_String_Array_Union_Number_String") }
    }
}
public open class Union_Curve_ICurve {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Curve> = None<Curve>
    init(param: Curve) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Curve {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Curve_ICurve") }
    }
    private var value1: Option<ICurve> = None<ICurve>
    init(param: ICurve) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ICurve {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Curve_ICurve") }
    }
}
public open class Union_ScrollAnimationOptions_Boolean {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ScrollAnimationOptions> = None<ScrollAnimationOptions>
    init(param: ScrollAnimationOptions) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ScrollAnimationOptions {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ScrollAnimationOptions_Boolean") }
    }
    private var value1: Option<Bool> = None<Bool>
    init(param: Bool) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Bool {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ScrollAnimationOptions_Boolean") }
    }
}
public open class Union_ResourceColor_LinearGradient {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ResourceColor> = None<ResourceColor>
    init(param: ResourceColor) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ResourceColor {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ResourceColor_LinearGradient") }
    }
    private var value1: Option<LinearGradient> = None<LinearGradient>
    init(param: LinearGradient) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): LinearGradient {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ResourceColor_LinearGradient") }
    }
}
public open class Union_Number_FontWeight_String {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_FontWeight_String") }
    }
    private var value1: Option<FontWeight> = None<FontWeight>
    init(param: FontWeight) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): FontWeight {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_FontWeight_String") }
    }
    private var value2: Option<String> = None<String>
    init(param: String) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): String {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Number_FontWeight_String") }
    }
}
public open class Union_TextStyle_styled_string_DecorationStyle_BaselineOffsetStyle_LetterSpacingStyle_TextShadowStyle_GestureStyle_ImageAttachment_ParagraphStyle_LineHeightStyle_UrlStyle_CustomSpan_UserDataSpan_BackgroundColorStyle {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<TextStyle_styled_string> = None<TextStyle_styled_string>
    init(param: TextStyle_styled_string) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): TextStyle_styled_string {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union StyledStringValue") }
    }
    private var value1: Option<DecorationStyle> = None<DecorationStyle>
    init(param: DecorationStyle) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): DecorationStyle {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union StyledStringValue") }
    }
    private var value2: Option<BaselineOffsetStyle> = None<BaselineOffsetStyle>
    init(param: BaselineOffsetStyle) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): BaselineOffsetStyle {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union StyledStringValue") }
    }
    private var value3: Option<LetterSpacingStyle> = None<LetterSpacingStyle>
    init(param: LetterSpacingStyle) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): LetterSpacingStyle {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union StyledStringValue") }
    }
    private var value4: Option<TextShadowStyle> = None<TextShadowStyle>
    init(param: TextShadowStyle) {
        value4 = param
        selector = 4
    }
    public open func getValue4(): TextShadowStyle {
        if (let Some(value4) <- value4) {
            return value4
        } else { throw Exception("Wrong selector value inside Union StyledStringValue") }
    }
    private var value5: Option<GestureStyle> = None<GestureStyle>
    init(param: GestureStyle) {
        value5 = param
        selector = 5
    }
    public open func getValue5(): GestureStyle {
        if (let Some(value5) <- value5) {
            return value5
        } else { throw Exception("Wrong selector value inside Union StyledStringValue") }
    }
    private var value6: Option<ImageAttachment> = None<ImageAttachment>
    init(param: ImageAttachment) {
        value6 = param
        selector = 6
    }
    public open func getValue6(): ImageAttachment {
        if (let Some(value6) <- value6) {
            return value6
        } else { throw Exception("Wrong selector value inside Union StyledStringValue") }
    }
    private var value7: Option<ParagraphStyle> = None<ParagraphStyle>
    init(param: ParagraphStyle) {
        value7 = param
        selector = 7
    }
    public open func getValue7(): ParagraphStyle {
        if (let Some(value7) <- value7) {
            return value7
        } else { throw Exception("Wrong selector value inside Union StyledStringValue") }
    }
    private var value8: Option<LineHeightStyle> = None<LineHeightStyle>
    init(param: LineHeightStyle) {
        value8 = param
        selector = 8
    }
    public open func getValue8(): LineHeightStyle {
        if (let Some(value8) <- value8) {
            return value8
        } else { throw Exception("Wrong selector value inside Union StyledStringValue") }
    }
    private var value9: Option<UrlStyle> = None<UrlStyle>
    init(param: UrlStyle) {
        value9 = param
        selector = 9
    }
    public open func getValue9(): UrlStyle {
        if (let Some(value9) <- value9) {
            return value9
        } else { throw Exception("Wrong selector value inside Union StyledStringValue") }
    }
    private var value10: Option<CustomSpan> = None<CustomSpan>
    init(param: CustomSpan) {
        value10 = param
        selector = 10
    }
    public open func getValue10(): CustomSpan {
        if (let Some(value10) <- value10) {
            return value10
        } else { throw Exception("Wrong selector value inside Union StyledStringValue") }
    }
    private var value11: Option<UserDataSpan> = None<UserDataSpan>
    init(param: UserDataSpan) {
        value11 = param
        selector = 11
    }
    public open func getValue11(): UserDataSpan {
        if (let Some(value11) <- value11) {
            return value11
        } else { throw Exception("Wrong selector value inside Union StyledStringValue") }
    }
    private var value12: Option<BackgroundColorStyle> = None<BackgroundColorStyle>
    init(param: BackgroundColorStyle) {
        value12 = param
        selector = 12
    }
    public open func getValue12(): BackgroundColorStyle {
        if (let Some(value12) <- value12) {
            return value12
        } else { throw Exception("Wrong selector value inside Union StyledStringValue") }
    }
}
public open class Union_Number_String_Resource {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_String_Resource") }
    }
    private var value1: Option<String> = None<String>
    init(param: String) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): String {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_String_Resource") }
    }
    private var value2: Option<Resource> = None<Resource>
    init(param: Resource) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): Resource {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Number_String_Resource") }
    }
}
public open class Union_Padding_Dimension_LocalizedPadding {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Padding> = None<Padding>
    init(param: Padding) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Padding {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Padding_Dimension_LocalizedPadding") }
    }
    private var value1: Option<Dimension> = None<Dimension>
    init(param: Dimension) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Dimension {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Padding_Dimension_LocalizedPadding") }
    }
    private var value2: Option<LocalizedPadding> = None<LocalizedPadding>
    init(param: LocalizedPadding) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): LocalizedPadding {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Padding_Dimension_LocalizedPadding") }
    }
}
public open class Union_ResourceStr_TabBarSymbol {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ResourceStr> = None<ResourceStr>
    init(param: ResourceStr) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ResourceStr {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_TabBarSymbol") }
    }
    private var value1: Option<TabBarSymbol> = None<TabBarSymbol>
    init(param: TabBarSymbol) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): TabBarSymbol {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_ResourceStr_TabBarSymbol") }
    }
}
public open class Union_String_Resource_CustomBuilder_Literal_Union_String_Resource_icon_text {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_String_Resource_CustomBuilder_Literal_Union_String_Resource_icon_text") }
    }
    private var value1: Option<Resource> = None<Resource>
    init(param: Resource) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Resource {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_String_Resource_CustomBuilder_Literal_Union_String_Resource_icon_text") }
    }
    private var value2: Option<CustomBuilder> = None<CustomBuilder>
    init(param: CustomBuilder) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): CustomBuilder {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_String_Resource_CustomBuilder_Literal_Union_String_Resource_icon_text") }
    }
    private var value3: Option<Literal_Union_String_Resource_icon_text> = None<Literal_Union_String_Resource_icon_text>
    init(param: Literal_Union_String_Resource_icon_text) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): Literal_Union_String_Resource_icon_text {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Union_String_Resource_CustomBuilder_Literal_Union_String_Resource_icon_text") }
    }
}
public open class Union_SubTabBarStyle_BottomTabBarStyle {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<SubTabBarStyle> = None<SubTabBarStyle>
    init(param: SubTabBarStyle) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): SubTabBarStyle {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_SubTabBarStyle_BottomTabBarStyle") }
    }
    private var value1: Option<BottomTabBarStyle> = None<BottomTabBarStyle>
    init(param: BottomTabBarStyle) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): BottomTabBarStyle {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_SubTabBarStyle_BottomTabBarStyle") }
    }
}
public open class Union_Number_Boolean {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_Boolean") }
    }
    private var value1: Option<Bool> = None<Bool>
    init(param: Bool) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Bool {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_Boolean") }
    }
}
public open class Union_Boolean_EnumDTS {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Bool> = None<Bool>
    init(param: Bool) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Bool {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Boolean_EnumDTS") }
    }
    private var value1: Option<EnumDTS> = None<EnumDTS>
    init(param: EnumDTS) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): EnumDTS {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Boolean_EnumDTS") }
    }
}
public open class Union_String_EnumDTS_Boolean {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_String_EnumDTS_Boolean") }
    }
    private var value1: Option<EnumDTS> = None<EnumDTS>
    init(param: EnumDTS) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): EnumDTS {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_String_EnumDTS_Boolean") }
    }
    private var value2: Option<Bool> = None<Bool>
    init(param: Bool) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): Bool {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_String_EnumDTS_Boolean") }
    }
}
public open class Union_Number_EnumDTS {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_EnumDTS") }
    }
    private var value1: Option<EnumDTS> = None<EnumDTS>
    init(param: EnumDTS) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): EnumDTS {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_EnumDTS") }
    }
}
public open class Union_Boolean_String {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Bool> = None<Bool>
    init(param: Bool) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Bool {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Boolean_String") }
    }
    private var value1: Option<String> = None<String>
    init(param: String) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): String {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Boolean_String") }
    }
}
public open class Union_String_Number {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_String_Number") }
    }
    private var value1: Option<Float64> = None<Float64>
    init(param: Float64) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Float64 {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_String_Number") }
    }
}
public open class Union_Boolean_String_Number {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Bool> = None<Bool>
    init(param: Bool) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Bool {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Boolean_String_Number") }
    }
    private var value1: Option<String> = None<String>
    init(param: String) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): String {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Boolean_String_Number") }
    }
    private var value2: Option<Float64> = None<Float64>
    init(param: Float64) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): Float64 {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Boolean_String_Number") }
    }
}
public open class Union_Number_Array_String {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_Array_String") }
    }
    private var value1: Option<ArrayList<String>> = None<ArrayList<String>>
    init(param: ArrayList<String>) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ArrayList<String> {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_Array_String") }
    }
}
public open class Union_Array_String_Array_Array_String_Resource_Array_TextPickerRangeContent_Array_TextCascadePickerRangeContent {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<ArrayList<String>> = None<ArrayList<String>>
    init(param: ArrayList<String>) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): ArrayList<String> {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Array_String_Array_Array_String_Resource_Array_TextPickerRangeContent_Array_TextCascadePickerRangeContent") }
    }
    private var value1: Option<ArrayList<ArrayList<String>>> = None<ArrayList<ArrayList<String>>>
    init(param: ArrayList<ArrayList<String>>) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ArrayList<ArrayList<String>> {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Array_String_Array_Array_String_Resource_Array_TextPickerRangeContent_Array_TextCascadePickerRangeContent") }
    }
    private var value2: Option<Resource> = None<Resource>
    init(param: Resource) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): Resource {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_Array_String_Array_Array_String_Resource_Array_TextPickerRangeContent_Array_TextCascadePickerRangeContent") }
    }
    private var value3: Option<ArrayList<TextPickerRangeContent>> = None<ArrayList<TextPickerRangeContent>>
    init(param: ArrayList<TextPickerRangeContent>) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): ArrayList<TextPickerRangeContent> {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Union_Array_String_Array_Array_String_Resource_Array_TextPickerRangeContent_Array_TextCascadePickerRangeContent") }
    }
    private var value4: Option<ArrayList<TextCascadePickerRangeContent>> = None<ArrayList<TextCascadePickerRangeContent>>
    init(param: ArrayList<TextCascadePickerRangeContent>) {
        value4 = param
        selector = 4
    }
    public open func getValue4(): ArrayList<TextCascadePickerRangeContent> {
        if (let Some(value4) <- value4) {
            return value4
        } else { throw Exception("Wrong selector value inside Union Union_Array_String_Array_Array_String_Resource_Array_TextPickerRangeContent_Array_TextCascadePickerRangeContent") }
    }
}
public open class Union_Number_Array_Number {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Float64> = None<Float64>
    init(param: Float64) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Float64 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Number_Array_Number") }
    }
    private var value1: Option<ArrayList<Float64>> = None<ArrayList<Float64>>
    init(param: ArrayList<Float64>) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): ArrayList<Float64> {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Number_Array_Number") }
    }
}
public open class Union_FontWeight_Number_String {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<FontWeight> = None<FontWeight>
    init(param: FontWeight) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): FontWeight {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_FontWeight_Number_String") }
    }
    private var value1: Option<Float64> = None<Float64>
    init(param: Float64) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Float64 {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_FontWeight_Number_String") }
    }
    private var value2: Option<String> = None<String>
    init(param: String) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): String {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_FontWeight_Number_String") }
    }
}
public open class Union_Vector1_Number {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Vector1> = None<Vector1>
    init(param: Vector1) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Vector1 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Vector1_Number") }
    }
    private var value1: Option<Float64> = None<Float64>
    init(param: Float64) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Float64 {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Vector1_Number") }
    }
}
public open class Union_Vector2_Number {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<Vector2> = None<Vector2>
    init(param: Vector2) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): Vector2 {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_Vector2_Number") }
    }
    private var value1: Option<Float64> = None<Float64>
    init(param: Float64) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Float64 {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_Vector2_Number") }
    }
}
public open class Union_String_Number_Resource_Buffer {
    private var selector: Int32
    public open func getSelector(): Int32 {
        return selector
    }
    private var value0: Option<String> = None<String>
    init(param: String) {
        value0 = param
        selector = 0
    }
    public open func getValue0(): String {
        if (let Some(value0) <- value0) {
            return value0
        } else { throw Exception("Wrong selector value inside Union Union_String_Number_Resource_Buffer") }
    }
    private var value1: Option<Float64> = None<Float64>
    init(param: Float64) {
        value1 = param
        selector = 1
    }
    public open func getValue1(): Float64 {
        if (let Some(value1) <- value1) {
            return value1
        } else { throw Exception("Wrong selector value inside Union Union_String_Number_Resource_Buffer") }
    }
    private var value2: Option<Resource> = None<Resource>
    init(param: Resource) {
        value2 = param
        selector = 2
    }
    public open func getValue2(): Resource {
        if (let Some(value2) <- value2) {
            return value2
        } else { throw Exception("Wrong selector value inside Union Union_String_Number_Resource_Buffer") }
    }
    private var value3: Option<Array<UInt8>> = None<Array<UInt8>>
    init(param: Array<UInt8>) {
        value3 = param
        selector = 3
    }
    public open func getValue3(): Array<UInt8> {
        if (let Some(value3) <- value3) {
            return value3
        } else { throw Exception("Wrong selector value inside Union Union_String_Number_Resource_Buffer") }
    }
}
