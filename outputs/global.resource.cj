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
