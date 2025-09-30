/*
 * Copyright (c) 2024-2025 Huawei Device Co., Ltd.
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


// WARNING! THIS FILE IS AUTO-GENERATED, DO NOT MAKE CHANGES, THEY WILL BE LOST ON NEXT GENERATION!

package idlize
import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime
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
