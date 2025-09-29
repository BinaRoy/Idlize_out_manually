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
public interface BaseEvent {
    public mut open prop source: SourceType
    public mut open prop axisHorizontal: Option<Float64>
    public mut open prop axisVertical: Option<Float64>
    public mut open prop pressure: Float64
    public mut open prop tiltX: Float64
    public mut open prop sourceTool: SourceTool
    public mut open prop deviceId: Option<Float64>
    public mut open prop targetDisplayId: Option<Float64>
    public open func getModifierKeyState(keys: ArrayList<String>): Bool
}
public open class BaseEventInternal <: MaterializedBase & BaseEvent {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public mut open prop source: SourceType
    {
        get() {
            return this.getSource()
        }
        set(source) {
            this.setSource(source)
        }
    }
    public mut open prop axisHorizontal: Option<Float64>
    {
        get() {
            return this.getAxisHorizontal()
        }
        set(axisHorizontal) {
            let axisHorizontal_NonNull = match (axisHorizontal as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setAxisHorizontal(axisHorizontal_NonNull)
        }
    }
    public mut open prop axisVertical: Option<Float64>
    {
        get() {
            return this.getAxisVertical()
        }
        set(axisVertical) {
            let axisVertical_NonNull = match (axisVertical as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setAxisVertical(axisVertical_NonNull)
        }
    }
    public mut open prop pressure: Float64
    {
        get() {
            return this.getPressure()
        }
        set(pressure) {
            this.setPressure(pressure)
        }
    }
    public mut open prop tiltX: Float64
    {
        get() {
            return this.getTiltX()
        }
        set(tiltX) {
            this.setTiltX(tiltX)
        }
    }
    public mut open prop sourceTool: SourceTool
    {
        get() {
            return this.getSourceTool()
        }
        set(sourceTool) {
            this.setSourceTool(sourceTool)
        }
    }
    public mut open prop deviceId: Option<Float64>
    {
        get() {
            return this.getDeviceId()
        }
        set(deviceId) {
            let deviceId_NonNull = match (deviceId as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setDeviceId(deviceId_NonNull)
        }
    }
    public mut open prop targetDisplayId: Option<Float64>
    {
        get() {
            return this.getTargetDisplayId()
        }
        set(targetDisplayId) {
            let targetDisplayId_NonNull = match (targetDisplayId as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setTargetDisplayId(targetDisplayId_NonNull)
        }
    }
    init(tag: MaterializedBaseTag, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, BaseEventInternal.getFinalizer())
    }
    init() {
        this(MaterializedBaseTag.NOP, BaseEventInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._BaseEvent_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._BaseEvent_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): BaseEventInternal {
        return BaseEventInternal(MaterializedBaseTag.NOP, ptr)
    }
    public open func getModifierKeyState(keys: ArrayList<String>): Bool {
        let keys_casted: ArrayList<String> = keys
        return this.getModifierKeyState_serialize(keys_casted)
    }
    private func getSource(): SourceType {
        return this.getSource_serialize()
    }
    private func setSource(source: SourceType): Unit {
        let source_casted: SourceType = source
        let thisPeer = this
        thisPeer.setSource_serialize(source_casted)
        return
    }
    private func getAxisHorizontal(): Option<Float64> {
        return this.getAxisHorizontal_serialize()
    }
    private func setAxisHorizontal(axisHorizontal: Option<Float64>): Unit {
        let axisHorizontal_casted: Option<Float64> = if (let Some(axisHorizontal) <- axisHorizontal) {axisHorizontal} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setAxisHorizontal_serialize(axisHorizontal_casted)
        return
    }
    private func getAxisVertical(): Option<Float64> {
        return this.getAxisVertical_serialize()
    }
    private func setAxisVertical(axisVertical: Option<Float64>): Unit {
        let axisVertical_casted: Option<Float64> = if (let Some(axisVertical) <- axisVertical) {axisVertical} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setAxisVertical_serialize(axisVertical_casted)
        return
    }
    private func getPressure(): Float64 {
        return this.getPressure_serialize()
    }
    private func setPressure(pressure: Float64): Unit {
        let pressure_casted: Float64 = pressure
        let thisPeer = this
        thisPeer.setPressure_serialize(pressure_casted)
        return
    }
    private func getTiltX(): Float64 {
        return this.getTiltX_serialize()
    }
    private func setTiltX(tiltX: Float64): Unit {
        let tiltX_casted: Float64 = tiltX
        let thisPeer = this
        thisPeer.setTiltX_serialize(tiltX_casted)
        return
    }
    private func getSourceTool(): SourceTool {
        return this.getSourceTool_serialize()
    }
    private func setSourceTool(sourceTool: SourceTool): Unit {
        let sourceTool_casted: SourceTool = sourceTool
        let thisPeer = this
        thisPeer.setSourceTool_serialize(sourceTool_casted)
        return
    }
    private func getDeviceId(): Option<Float64> {
        return this.getDeviceId_serialize()
    }
    private func setDeviceId(deviceId: Option<Float64>): Unit {
        let deviceId_casted: Option<Float64> = if (let Some(deviceId) <- deviceId) {deviceId} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setDeviceId_serialize(deviceId_casted)
        return
    }
    private func getTargetDisplayId(): Option<Float64> {
        return this.getTargetDisplayId_serialize()
    }
    private func setTargetDisplayId(targetDisplayId: Option<Float64>): Unit {
        let targetDisplayId_casted: Option<Float64> = if (let Some(targetDisplayId) <- targetDisplayId) {targetDisplayId} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setTargetDisplayId_serialize(targetDisplayId_casted)
        return
    }
    private func getModifierKeyState_serialize(keys: ArrayList<String>): Bool {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(keys.size));
        for (keysCounterI in 0..keys.size) {
            let keysTmpElement: String = keys[Int64(keysCounterI)]
            thisSerializer.writeString(keysTmpElement);
        }
        let retval = ArkUIGeneratedNativeModule._BaseEvent_getModifierKeyState(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        return retval
    }
    private func getSource_serialize(): SourceType {
        let retval = ArkUIGeneratedNativeModule._BaseEvent_getSource(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return SourceType(retval)
    }
    private func setSource_serialize(source: SourceType): Unit {
        ArkUIGeneratedNativeModule._BaseEvent_setSource(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, source.value);
    }
    private func getAxisHorizontal_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._BaseEvent_getAxisHorizontal(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func setAxisHorizontal_serialize(axisHorizontal: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(axisHorizontal) <- axisHorizontal) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let axisHorizontalTmpValue = axisHorizontal
            thisSerializer.writeNumber(axisHorizontalTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._BaseEvent_setAxisHorizontal(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getAxisVertical_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._BaseEvent_getAxisVertical(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func setAxisVertical_serialize(axisVertical: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(axisVertical) <- axisVertical) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let axisVerticalTmpValue = axisVertical
            thisSerializer.writeNumber(axisVerticalTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._BaseEvent_setAxisVertical(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getPressure_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._BaseEvent_getPressure(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setPressure_serialize(pressure: Float64): Unit {
        ArkUIGeneratedNativeModule._BaseEvent_setPressure(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, pressure);
    }
    private func getTiltX_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._BaseEvent_getTiltX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setTiltX_serialize(tiltX: Float64): Unit {
        ArkUIGeneratedNativeModule._BaseEvent_setTiltX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, tiltX);
    }
    private func getSourceTool_serialize(): SourceTool {
        let retval = ArkUIGeneratedNativeModule._BaseEvent_getSourceTool(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return SourceTool(retval)
    }
    private func setSourceTool_serialize(sourceTool: SourceTool): Unit {
        ArkUIGeneratedNativeModule._BaseEvent_setSourceTool(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, sourceTool.value);
    }
    private func getDeviceId_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._BaseEvent_getDeviceId(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func setDeviceId_serialize(deviceId: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(deviceId) <- deviceId) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let deviceIdTmpValue = deviceId
            thisSerializer.writeNumber(deviceIdTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._BaseEvent_setDeviceId(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getTargetDisplayId_serialize(): Option<Float64> {
        let retval = ArkUIGeneratedNativeModule._BaseEvent_getTargetDisplayId(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            buffer = match (retvalDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let returnResult: Option<Float64> = buffer
        return returnResult
    }
    private func setTargetDisplayId_serialize(targetDisplayId: Option<Float64>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(targetDisplayId) <- targetDisplayId) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let targetDisplayIdTmpValue = targetDisplayId
            thisSerializer.writeNumber(targetDisplayIdTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._BaseEvent_setTargetDisplayId(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public interface ClickEvent <: BaseEvent {
    public mut open prop displayX: Float64
    public mut open prop displayY: Float64
    public mut open prop windowX: Float64
    public mut open prop windowY: Float64
    public mut open prop screenX: Float64
    public mut open prop screenY: Float64
    public mut open prop x: Float64
    public mut open prop y: Float64
    public mut open prop preventDefault: (() -> Unit)
}
public open class ClickEventInternal <: BaseEventInternal & MaterializedBase & ClickEvent {
    public mut open prop displayX: Float64
    {
        get() {
            return this.getDisplayX()
        }
        set(displayX) {
            this.setDisplayX(displayX)
        }
    }
    public mut open prop displayY: Float64
    {
        get() {
            return this.getDisplayY()
        }
        set(displayY) {
            this.setDisplayY(displayY)
        }
    }
    public mut open prop windowX: Float64
    {
        get() {
            return this.getWindowX()
        }
        set(windowX) {
            this.setWindowX(windowX)
        }
    }
    public mut open prop windowY: Float64
    {
        get() {
            return this.getWindowY()
        }
        set(windowY) {
            this.setWindowY(windowY)
        }
    }
    public mut open prop screenX: Float64
    {
        get() {
            return this.getScreenX()
        }
        set(screenX) {
            this.setScreenX(screenX)
        }
    }
    public mut open prop screenY: Float64
    {
        get() {
            return this.getScreenY()
        }
        set(screenY) {
            this.setScreenY(screenY)
        }
    }
    public mut open prop x: Float64
    {
        get() {
            return this.getX()
        }
        set(x) {
            this.setX(x)
        }
    }
    public mut open prop y: Float64
    {
        get() {
            return this.getY()
        }
        set(y) {
            this.setY(y)
        }
    }
    public mut open prop preventDefault: (() -> Unit)
    {
        get() {
            return this.getPreventDefault()
        }
        set(preventDefault) {
            this.setPreventDefault(preventDefault)
        }
    }
    init(tag: MaterializedBaseTag, peerPtr: UInt64) {
        super(tag, peerPtr)
    }
    init() {
        this(MaterializedBaseTag.NOP, ClickEventInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._ClickEvent_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._ClickEvent_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): ClickEventInternal {
        return ClickEventInternal(MaterializedBaseTag.NOP, ptr)
    }
    private func getDisplayX(): Float64 {
        return this.getDisplayX_serialize()
    }
    private func setDisplayX(displayX: Float64): Unit {
        let displayX_casted: Float64 = displayX
        let thisPeer = this
        thisPeer.setDisplayX_serialize(displayX_casted)
        return
    }
    private func getDisplayY(): Float64 {
        return this.getDisplayY_serialize()
    }
    private func setDisplayY(displayY: Float64): Unit {
        let displayY_casted: Float64 = displayY
        let thisPeer = this
        thisPeer.setDisplayY_serialize(displayY_casted)
        return
    }
    private func getWindowX(): Float64 {
        return this.getWindowX_serialize()
    }
    private func setWindowX(windowX: Float64): Unit {
        let windowX_casted: Float64 = windowX
        let thisPeer = this
        thisPeer.setWindowX_serialize(windowX_casted)
        return
    }
    private func getWindowY(): Float64 {
        return this.getWindowY_serialize()
    }
    private func setWindowY(windowY: Float64): Unit {
        let windowY_casted: Float64 = windowY
        let thisPeer = this
        thisPeer.setWindowY_serialize(windowY_casted)
        return
    }
    private func getScreenX(): Float64 {
        return this.getScreenX_serialize()
    }
    private func setScreenX(screenX: Float64): Unit {
        let screenX_casted: Float64 = screenX
        let thisPeer = this
        thisPeer.setScreenX_serialize(screenX_casted)
        return
    }
    private func getScreenY(): Float64 {
        return this.getScreenY_serialize()
    }
    private func setScreenY(screenY: Float64): Unit {
        let screenY_casted: Float64 = screenY
        let thisPeer = this
        thisPeer.setScreenY_serialize(screenY_casted)
        return
    }
    private func getX(): Float64 {
        return this.getX_serialize()
    }
    private func setX(x: Float64): Unit {
        let x_casted: Float64 = x
        let thisPeer = this
        thisPeer.setX_serialize(x_casted)
        return
    }
    private func getY(): Float64 {
        return this.getY_serialize()
    }
    private func setY(y: Float64): Unit {
        let y_casted: Float64 = y
        let thisPeer = this
        thisPeer.setY_serialize(y_casted)
        return
    }
    private func getPreventDefault(): (() -> Unit) {
        return this.getPreventDefault_serialize()
    }
    private func setPreventDefault(preventDefault: (() -> Unit)): Unit {
        let preventDefault_casted: (() -> Unit) = preventDefault
        let thisPeer = this
        thisPeer.setPreventDefault_serialize(preventDefault_casted)
        return
    }
    private func getDisplayX_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._ClickEvent_getDisplayX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setDisplayX_serialize(displayX: Float64): Unit {
        ArkUIGeneratedNativeModule._ClickEvent_setDisplayX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, displayX);
    }
    private func getDisplayY_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._ClickEvent_getDisplayY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setDisplayY_serialize(displayY: Float64): Unit {
        ArkUIGeneratedNativeModule._ClickEvent_setDisplayY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, displayY);
    }
    private func getWindowX_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._ClickEvent_getWindowX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setWindowX_serialize(windowX: Float64): Unit {
        ArkUIGeneratedNativeModule._ClickEvent_setWindowX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, windowX);
    }
    private func getWindowY_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._ClickEvent_getWindowY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setWindowY_serialize(windowY: Float64): Unit {
        ArkUIGeneratedNativeModule._ClickEvent_setWindowY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, windowY);
    }
    private func getScreenX_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._ClickEvent_getScreenX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setScreenX_serialize(screenX: Float64): Unit {
        ArkUIGeneratedNativeModule._ClickEvent_setScreenX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, screenX);
    }
    private func getScreenY_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._ClickEvent_getScreenY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setScreenY_serialize(screenY: Float64): Unit {
        ArkUIGeneratedNativeModule._ClickEvent_setScreenY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, screenY);
    }
    private func getX_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._ClickEvent_getX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setX_serialize(x: Float64): Unit {
        ArkUIGeneratedNativeModule._ClickEvent_setX(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, x);
    }
    private func getY_serialize(): Float64 {
        let retval = ArkUIGeneratedNativeModule._ClickEvent_getY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func setY_serialize(y: Float64): Unit {
        ArkUIGeneratedNativeModule._ClickEvent_setY(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, y);
    }
    private func getPreventDefault_serialize(): (() -> Unit) {
        let retval = ArkUIGeneratedNativeModule._ClickEvent_getPreventDefault(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        throw Exception("Object deserialization is not implemented.")
    }
    private func setPreventDefault_serialize(preventDefault: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(preventDefault);
        ArkUIGeneratedNativeModule._ClickEvent_setPreventDefault(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class DrawModifierInternal {
    public static func fromPtr(ptr: UInt64): DrawModifier {
        return DrawModifier(MaterializedBaseTag.NOP, ptr)
    }
}
public open class DrawModifier <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public mut open prop drawBehind: Option<((drawContext: DrawContext) -> Unit)>
    {
        get() {
            return this.getDrawBehind()
        }
        set(drawBehind) {
            let drawBehind_NonNull = match (drawBehind as ((drawContext: DrawContext) -> Unit)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setDrawBehind(drawBehind_NonNull)
        }
    }
    public mut open prop drawContent: Option<((drawContext: DrawContext) -> Unit)>
    {
        get() {
            return this.getDrawContent()
        }
        set(drawContent) {
            let drawContent_NonNull = match (drawContent as ((drawContext: DrawContext) -> Unit)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setDrawContent(drawContent_NonNull)
        }
    }
    public mut open prop drawFront: Option<((drawContext: DrawContext) -> Unit)>
    {
        get() {
            return this.getDrawFront()
        }
        set(drawFront) {
            let drawFront_NonNull = match (drawFront as ((drawContext: DrawContext) -> Unit)) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            this.setDrawFront(drawFront_NonNull)
        }
    }
    init(tag: MaterializedBaseTag, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, DrawModifier.getFinalizer())
    }
    init() {
        this(MaterializedBaseTag.NOP, DrawModifier.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._DrawModifier_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._DrawModifier_getFinalizer()
    }
    public open func invalidate(): Unit {
        let thisPeer = this
        thisPeer.invalidate_serialize()
        return
    }
    private func getDrawBehind(): Option<((drawContext: DrawContext) -> Unit)> {
        return this.getDrawBehind_serialize()
    }
    private func setDrawBehind(drawBehind: Option<((drawContext: DrawContext) -> Unit)>): Unit {
        let drawBehind_casted: Option<((drawContext: DrawContext) -> Unit)> = if (let Some(drawBehind) <- drawBehind) {drawBehind} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setDrawBehind_serialize(drawBehind_casted)
        return
    }
    private func getDrawContent(): Option<((drawContext: DrawContext) -> Unit)> {
        return this.getDrawContent_serialize()
    }
    private func setDrawContent(drawContent: Option<((drawContext: DrawContext) -> Unit)>): Unit {
        let drawContent_casted: Option<((drawContext: DrawContext) -> Unit)> = if (let Some(drawContent) <- drawContent) {drawContent} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setDrawContent_serialize(drawContent_casted)
        return
    }
    private func getDrawFront(): Option<((drawContext: DrawContext) -> Unit)> {
        return this.getDrawFront_serialize()
    }
    private func setDrawFront(drawFront: Option<((drawContext: DrawContext) -> Unit)>): Unit {
        let drawFront_casted: Option<((drawContext: DrawContext) -> Unit)> = if (let Some(drawFront) <- drawFront) {drawFront} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setDrawFront_serialize(drawFront_casted)
        return
    }
    private func invalidate_serialize(): Unit {
        ArkUIGeneratedNativeModule._DrawModifier_invalidate(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func getDrawBehind_serialize(): Option<((drawContext: DrawContext) -> Unit)> {
        let retval = ArkUIGeneratedNativeModule._DrawModifier_getDrawBehind(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<((drawContext: DrawContext) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            let bufferOptBufResource: CallbackResource = retvalDeserializer.readCallbackResource()
            let bufferOptBufCall: UInt64 = retvalDeserializer.readPointer()
            let bufferOptBufCallSync: UInt64 = retvalDeserializer.readPointer()
            buffer = {drawContext: DrawContext => let bufferOptBufArgsSerializer: SerializerBase = SerializerBase.hold();
bufferOptBufArgsSerializer.writeInt32(bufferOptBufResource.resourceId);
bufferOptBufArgsSerializer.writePointer(bufferOptBufCall);
bufferOptBufArgsSerializer.writePointer(bufferOptBufCallSync);
arkui_Graphics_DrawContext_serializer.write(bufferOptBufArgsSerializer, drawContext);
InteropNativeModule._CallCallbackSync(10, 1818748528, bufferOptBufArgsSerializer.asBuffer(), bufferOptBufArgsSerializer.length());
bufferOptBufArgsSerializer.release();
return; }
        }
        let returnResult: Option<((drawContext: DrawContext) -> Unit)> = buffer
        return returnResult
    }
    private func setDrawBehind_serialize(drawBehind: Option<((drawContext: DrawContext) -> Unit)>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(drawBehind) <- drawBehind) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let drawBehindTmpValue = drawBehind
            thisSerializer.holdAndWriteCallback(drawBehindTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._DrawModifier_setDrawBehind(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getDrawContent_serialize(): Option<((drawContext: DrawContext) -> Unit)> {
        let retval = ArkUIGeneratedNativeModule._DrawModifier_getDrawContent(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<((drawContext: DrawContext) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            let bufferOptBufResource: CallbackResource = retvalDeserializer.readCallbackResource()
            let bufferOptBufCall: UInt64 = retvalDeserializer.readPointer()
            let bufferOptBufCallSync: UInt64 = retvalDeserializer.readPointer()
            buffer = {drawContext: DrawContext => let bufferOptBufArgsSerializer: SerializerBase = SerializerBase.hold();
bufferOptBufArgsSerializer.writeInt32(bufferOptBufResource.resourceId);
bufferOptBufArgsSerializer.writePointer(bufferOptBufCall);
bufferOptBufArgsSerializer.writePointer(bufferOptBufCallSync);
arkui_Graphics_DrawContext_serializer.write(bufferOptBufArgsSerializer, drawContext);
InteropNativeModule._CallCallbackSync(10, 1818748528, bufferOptBufArgsSerializer.asBuffer(), bufferOptBufArgsSerializer.length());
bufferOptBufArgsSerializer.release();
return; }
        }
        let returnResult: Option<((drawContext: DrawContext) -> Unit)> = buffer
        return returnResult
    }
    private func setDrawContent_serialize(drawContent: Option<((drawContext: DrawContext) -> Unit)>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(drawContent) <- drawContent) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let drawContentTmpValue = drawContent
            thisSerializer.holdAndWriteCallback(drawContentTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._DrawModifier_setDrawContent(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getDrawFront_serialize(): Option<((drawContext: DrawContext) -> Unit)> {
        let retval = ArkUIGeneratedNativeModule._DrawModifier_getDrawFront(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let buffer_runtimeType = match (retvalDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var buffer: Option<((drawContext: DrawContext) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(buffer_runtimeType))) {
            let bufferOptBufResource: CallbackResource = retvalDeserializer.readCallbackResource()
            let bufferOptBufCall: UInt64 = retvalDeserializer.readPointer()
            let bufferOptBufCallSync: UInt64 = retvalDeserializer.readPointer()
            buffer = {drawContext: DrawContext => let bufferOptBufArgsSerializer: SerializerBase = SerializerBase.hold();
bufferOptBufArgsSerializer.writeInt32(bufferOptBufResource.resourceId);
bufferOptBufArgsSerializer.writePointer(bufferOptBufCall);
bufferOptBufArgsSerializer.writePointer(bufferOptBufCallSync);
arkui_Graphics_DrawContext_serializer.write(bufferOptBufArgsSerializer, drawContext);
InteropNativeModule._CallCallbackSync(10, 1818748528, bufferOptBufArgsSerializer.asBuffer(), bufferOptBufArgsSerializer.length());
bufferOptBufArgsSerializer.release();
return; }
        }
        let returnResult: Option<((drawContext: DrawContext) -> Unit)> = buffer
        return returnResult
    }
    private func setDrawFront_serialize(drawFront: Option<((drawContext: DrawContext) -> Unit)>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(drawFront) <- drawFront) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let drawFrontTmpValue = drawFront
            thisSerializer.holdAndWriteCallback(drawFrontTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._DrawModifier_setDrawFront(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public interface ICurve {
    public open func interpolate(fraction: Float64): Float64
}
public open class ICurveInternal <: MaterializedBase & ICurve {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    init(tag: MaterializedBaseTag, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, ICurveInternal.getFinalizer())
    }
    init() {
        this(MaterializedBaseTag.NOP, ICurveInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._ICurve_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._ICurve_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): ICurveInternal {
        return ICurveInternal(MaterializedBaseTag.NOP, ptr)
    }
    public open func interpolate(fraction: Float64): Float64 {
        let fraction_casted: Float64 = fraction
        return this.interpolate_serialize(fraction_casted)
    }
    private func interpolate_serialize(fraction: Float64): Float64 {
        let retval = ArkUIGeneratedNativeModule._ICurve_interpolate(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, fraction)
        return retval
    }
}
public interface Layoutable {
    public mut open prop measureResult: MeasureResult
    public open func layout(position: Position): Unit
    public open func getMargin(): DirectionalEdgesT
    public open func getPadding(): DirectionalEdgesT
    public open func getBorderWidth(): DirectionalEdgesT
}
public open class LayoutableInternal <: MaterializedBase & Layoutable {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    public mut open prop measureResult: MeasureResult
    {
        get() {
            return this.getMeasureResult()
        }
        set(measureResult) {
            this.setMeasureResult(measureResult)
        }
    }
    init(tag: MaterializedBaseTag, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, LayoutableInternal.getFinalizer())
    }
    init() {
        this(MaterializedBaseTag.NOP, LayoutableInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._Layoutable_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._Layoutable_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): LayoutableInternal {
        return LayoutableInternal(MaterializedBaseTag.NOP, ptr)
    }
    public open func layout(position: Position): Unit {
        let position_casted: Position = position
        let thisPeer = this
        thisPeer.layout_serialize(position_casted)
        return
    }
    public open func getMargin(): DirectionalEdgesT {
        return this.getMargin_serialize()
    }
    public open func getPadding(): DirectionalEdgesT {
        return this.getPadding_serialize()
    }
    public open func getBorderWidth(): DirectionalEdgesT {
        return this.getBorderWidth_serialize()
    }
    private func getMeasureResult(): MeasureResult {
        return this.getMeasureResult_serialize()
    }
    private func setMeasureResult(measureResult: MeasureResult): Unit {
        let measureResult_casted: MeasureResult = measureResult
        let thisPeer = this
        thisPeer.setMeasureResult_serialize(measureResult_casted)
        return
    }
    private func layout_serialize(position: Position): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        arkui_component_Position_serializer.write(thisSerializer, position);
        ArkUIGeneratedNativeModule._Layoutable_layout(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func getMargin_serialize(): DirectionalEdgesT {
        let retval = ArkUIGeneratedNativeModule._Layoutable_getMargin(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: DirectionalEdgesT = DirectionalEdgesT_serializer.read(retvalDeserializer)
        return returnResult
    }
    private func getPadding_serialize(): DirectionalEdgesT {
        let retval = ArkUIGeneratedNativeModule._Layoutable_getPadding(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: DirectionalEdgesT = DirectionalEdgesT_serializer.read(retvalDeserializer)
        return returnResult
    }
    private func getBorderWidth_serialize(): DirectionalEdgesT {
        let retval = ArkUIGeneratedNativeModule._Layoutable_getBorderWidth(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: DirectionalEdgesT = DirectionalEdgesT_serializer.read(retvalDeserializer)
        return returnResult
    }
    private func getMeasureResult_serialize(): MeasureResult {
        let retval = ArkUIGeneratedNativeModule._Layoutable_getMeasureResult(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: MeasureResult = MeasureResult_serializer.read(retvalDeserializer)
        return returnResult
    }
    private func setMeasureResult_serialize(measureResult: MeasureResult): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        MeasureResult_serializer.write(thisSerializer, measureResult);
        ArkUIGeneratedNativeModule._Layoutable_setMeasureResult(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public interface Measurable {
    public open func measure(constraint: ConstraintSizeOptions): MeasureResult
    public open func getMargin(): DirectionalEdgesT
    public open func getPadding(): DirectionalEdgesT
    public open func getBorderWidth(): DirectionalEdgesT
}
public open class MeasurableInternal <: MaterializedBase & Measurable {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    init(tag: MaterializedBaseTag, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, MeasurableInternal.getFinalizer())
    }
    init() {
        this(MaterializedBaseTag.NOP, MeasurableInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._Measurable_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._Measurable_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): MeasurableInternal {
        return MeasurableInternal(MaterializedBaseTag.NOP, ptr)
    }
    public open func measure(constraint: ConstraintSizeOptions): MeasureResult {
        let constraint_casted: ConstraintSizeOptions = constraint
        return this.measure_serialize(constraint_casted)
    }
    public open func getMargin(): DirectionalEdgesT {
        return this.getMargin_serialize()
    }
    public open func getPadding(): DirectionalEdgesT {
        return this.getPadding_serialize()
    }
    public open func getBorderWidth(): DirectionalEdgesT {
        return this.getBorderWidth_serialize()
    }
    private func measure_serialize(constraint: ConstraintSizeOptions): MeasureResult {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        ConstraintSizeOptions_serializer.write(thisSerializer, constraint);
        let retval = ArkUIGeneratedNativeModule._Measurable_measure(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length())
        thisSerializer.release();
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: MeasureResult = MeasureResult_serializer.read(retvalDeserializer)
        return returnResult
    }
    private func getMargin_serialize(): DirectionalEdgesT {
        let retval = ArkUIGeneratedNativeModule._Measurable_getMargin(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: DirectionalEdgesT = DirectionalEdgesT_serializer.read(retvalDeserializer)
        return returnResult
    }
    private func getPadding_serialize(): DirectionalEdgesT {
        let retval = ArkUIGeneratedNativeModule._Measurable_getPadding(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: DirectionalEdgesT = DirectionalEdgesT_serializer.read(retvalDeserializer)
        return returnResult
    }
    private func getBorderWidth_serialize(): DirectionalEdgesT {
        let retval = ArkUIGeneratedNativeModule._Measurable_getBorderWidth(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        var retvalDeserializer: DeserializerBase = DeserializerBase(retval, Int32(retval.size))
        let returnResult: DirectionalEdgesT = DirectionalEdgesT_serializer.read(retvalDeserializer)
        return returnResult
    }
}
public interface UICommonEvent {
    public open func setOnClick(callback_: Option<Callback_ClickEvent_Void>): Unit
}
public open class UICommonEventInternal <: MaterializedBase & UICommonEvent {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    init(tag: MaterializedBaseTag, peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, UICommonEventInternal.getFinalizer())
    }
    init() {
        this(MaterializedBaseTag.NOP, UICommonEventInternal.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._UICommonEvent_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._UICommonEvent_getFinalizer()
    }
    public static func fromPtr(ptr: UInt64): UICommonEventInternal {
        return UICommonEventInternal(MaterializedBaseTag.NOP, ptr)
    }
    public open func setOnClick(callback_: Option<Callback_ClickEvent_Void>): Unit {
        let callback__casted: Option<Callback_ClickEvent_Void> = if (let Some(callback_) <- callback_) {callback_} else { throw Exception("Type has to be not None")}
        let thisPeer = this
        thisPeer.setOnClick_serialize(callback__casted)
        return
    }
    private func setOnClick_serialize(callback_: Option<Callback_ClickEvent_Void>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(callback_) <- callback_) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let callback_TmpValue = callback_
            thisSerializer.holdAndWriteCallback(callback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._UICommonEvent_setOnClick(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class ArkCommonMethodPeer <: PeerNode {
    public init(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkCommonMethodPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._CommonMethod_construct(peerId, flags)
        let _peer = ArkCommonMethodPeer(_peerPtr, peerId, "CommonMethod", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setBackdropBlurAttribute(radius: Option<Float64>, options: Option<BlurOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(radius) <- radius) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let radiusTmpValue = radius
            thisSerializer.writeNumber(radiusTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (let Some(options) <- options) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            BlurOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBackdropBlur(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setWidthAttribute(widthValue: Option<Union_Length_LayoutPolicy>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(widthValue) <- widthValue) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let widthValueTmpValue = widthValue
            if (widthValueTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let widthValueTmpValueForIdx0 = widthValueTmpValue.getValue0()
                if (widthValueTmpValueForIdx0.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0));
                    let widthValueTmpValueForIdx0ForIdx0 = widthValueTmpValueForIdx0.getValue0()
                    thisSerializer.writeString(widthValueTmpValueForIdx0ForIdx0);
                } else if (widthValueTmpValueForIdx0.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1));
                    let widthValueTmpValueForIdx0ForIdx1 = widthValueTmpValueForIdx0.getValue1()
                    thisSerializer.writeNumber(widthValueTmpValueForIdx0ForIdx1);
                } else if (widthValueTmpValueForIdx0.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2));
                    let widthValueTmpValueForIdx0ForIdx2 = widthValueTmpValueForIdx0.getValue2()
                    global_resource_Resource_serializer.write(thisSerializer, widthValueTmpValueForIdx0ForIdx2);
                }
            } else if (widthValueTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let widthValueTmpValueForIdx1 = widthValueTmpValue.getValue1()
                LayoutPolicy_serializer.write(thisSerializer, widthValueTmpValueForIdx1);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setWidth(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setHeightAttribute(heightValue: Option<Union_Length_LayoutPolicy>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(heightValue) <- heightValue) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let heightValueTmpValue = heightValue
            if (heightValueTmpValue.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let heightValueTmpValueForIdx0 = heightValueTmpValue.getValue0()
                if (heightValueTmpValueForIdx0.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0));
                    let heightValueTmpValueForIdx0ForIdx0 = heightValueTmpValueForIdx0.getValue0()
                    thisSerializer.writeString(heightValueTmpValueForIdx0ForIdx0);
                } else if (heightValueTmpValueForIdx0.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1));
                    let heightValueTmpValueForIdx0ForIdx1 = heightValueTmpValueForIdx0.getValue1()
                    thisSerializer.writeNumber(heightValueTmpValueForIdx0ForIdx1);
                } else if (heightValueTmpValueForIdx0.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2));
                    let heightValueTmpValueForIdx0ForIdx2 = heightValueTmpValueForIdx0.getValue2()
                    global_resource_Resource_serializer.write(thisSerializer, heightValueTmpValueForIdx0ForIdx2);
                }
            } else if (heightValueTmpValue.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let heightValueTmpValueForIdx1 = heightValueTmpValue.getValue1()
                LayoutPolicy_serializer.write(thisSerializer, heightValueTmpValueForIdx1);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setHeight(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setKeyAttribute(value: String): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setKey(this.peer.ptr, value);
    }
    public open func setRestoreIdAttribute(value: Float64): Unit {
        ArkUIGeneratedNativeModule._CommonMethod_setRestoreId(this.peer.ptr, value);
    }
    public open func setPaddingAttribute(value: Union_Padding_Dimension): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            let valueForIdx0Top = valueForIdx0.top
            if (let Some(valueForIdx0Top) <- valueForIdx0Top) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                let valueForIdx0TopTmpValue = valueForIdx0Top
                if (valueForIdx0TopTmpValue.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0));
                    let valueForIdx0TopTmpValueForIdx0 = valueForIdx0TopTmpValue.getValue0()
                    thisSerializer.writeString(valueForIdx0TopTmpValueForIdx0);
                } else if (valueForIdx0TopTmpValue.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1));
                    let valueForIdx0TopTmpValueForIdx1 = valueForIdx0TopTmpValue.getValue1()
                    thisSerializer.writeNumber(valueForIdx0TopTmpValueForIdx1);
                } else if (valueForIdx0TopTmpValue.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2));
                    let valueForIdx0TopTmpValueForIdx2 = valueForIdx0TopTmpValue.getValue2()
                    global_resource_Resource_serializer.write(thisSerializer, valueForIdx0TopTmpValueForIdx2);
                }
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
            }
            let valueForIdx0Right = valueForIdx0.right
            if (let Some(valueForIdx0Right) <- valueForIdx0Right) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                let valueForIdx0RightTmpValue = valueForIdx0Right
                if (valueForIdx0RightTmpValue.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0));
                    let valueForIdx0RightTmpValueForIdx0 = valueForIdx0RightTmpValue.getValue0()
                    thisSerializer.writeString(valueForIdx0RightTmpValueForIdx0);
                } else if (valueForIdx0RightTmpValue.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1));
                    let valueForIdx0RightTmpValueForIdx1 = valueForIdx0RightTmpValue.getValue1()
                    thisSerializer.writeNumber(valueForIdx0RightTmpValueForIdx1);
                } else if (valueForIdx0RightTmpValue.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2));
                    let valueForIdx0RightTmpValueForIdx2 = valueForIdx0RightTmpValue.getValue2()
                    global_resource_Resource_serializer.write(thisSerializer, valueForIdx0RightTmpValueForIdx2);
                }
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
            }
            let valueForIdx0Bottom = valueForIdx0.bottom
            if (let Some(valueForIdx0Bottom) <- valueForIdx0Bottom) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                let valueForIdx0BottomTmpValue = valueForIdx0Bottom
                if (valueForIdx0BottomTmpValue.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0));
                    let valueForIdx0BottomTmpValueForIdx0 = valueForIdx0BottomTmpValue.getValue0()
                    thisSerializer.writeString(valueForIdx0BottomTmpValueForIdx0);
                } else if (valueForIdx0BottomTmpValue.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1));
                    let valueForIdx0BottomTmpValueForIdx1 = valueForIdx0BottomTmpValue.getValue1()
                    thisSerializer.writeNumber(valueForIdx0BottomTmpValueForIdx1);
                } else if (valueForIdx0BottomTmpValue.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2));
                    let valueForIdx0BottomTmpValueForIdx2 = valueForIdx0BottomTmpValue.getValue2()
                    global_resource_Resource_serializer.write(thisSerializer, valueForIdx0BottomTmpValueForIdx2);
                }
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
            }
            let valueForIdx0Left = valueForIdx0.left
            if (let Some(valueForIdx0Left) <- valueForIdx0Left) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                let valueForIdx0LeftTmpValue = valueForIdx0Left
                if (valueForIdx0LeftTmpValue.getSelector() == 0) {
                    thisSerializer.writeInt8(Int8(0));
                    let valueForIdx0LeftTmpValueForIdx0 = valueForIdx0LeftTmpValue.getValue0()
                    thisSerializer.writeString(valueForIdx0LeftTmpValueForIdx0);
                } else if (valueForIdx0LeftTmpValue.getSelector() == 1) {
                    thisSerializer.writeInt8(Int8(1));
                    let valueForIdx0LeftTmpValueForIdx1 = valueForIdx0LeftTmpValue.getValue1()
                    thisSerializer.writeNumber(valueForIdx0LeftTmpValueForIdx1);
                } else if (valueForIdx0LeftTmpValue.getSelector() == 2) {
                    thisSerializer.writeInt8(Int8(2));
                    let valueForIdx0LeftTmpValueForIdx2 = valueForIdx0LeftTmpValue.getValue2()
                    global_resource_Resource_serializer.write(thisSerializer, valueForIdx0LeftTmpValueForIdx2);
                }
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
            }
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            if (valueForIdx1.getSelector() == 0) {
                thisSerializer.writeInt8(Int8(0));
                let valueForIdx1ForIdx0 = valueForIdx1.getValue0()
                thisSerializer.writeString(valueForIdx1ForIdx0);
            } else if (valueForIdx1.getSelector() == 1) {
                thisSerializer.writeInt8(Int8(1));
                let valueForIdx1ForIdx1 = valueForIdx1.getValue1()
                thisSerializer.writeNumber(valueForIdx1ForIdx1);
            } else if (valueForIdx1.getSelector() == 2) {
                thisSerializer.writeInt8(Int8(2));
                let valueForIdx1ForIdx2 = valueForIdx1.getValue2()
                global_resource_Resource_serializer.write(thisSerializer, valueForIdx1ForIdx2);
            }
        }
        ArkUIGeneratedNativeModule._CommonMethod_setPadding(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBackgroundAttribute(builder: CustomBuilder, options: Option<Literal_Alignment_align>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(builder);
        if (let Some(options) <- options) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            let optionsTmpValueAlign = optionsTmpValue.align
            if (let Some(optionsTmpValueAlign) <- optionsTmpValueAlign) {
                thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                let optionsTmpValueAlignTmpValue = optionsTmpValueAlign
                thisSerializer.writeInt32(optionsTmpValueAlignTmpValue.value);
            } else {
                thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBackground(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBindSheetAttribute(isShow: Option<Bool>, builder: CustomBuilder, options: Option<SheetOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(isShow) <- isShow) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let isShowTmpValue = isShow
            thisSerializer.writeBoolean(isShowTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        thisSerializer.holdAndWriteCallback(builder);
        if (let Some(options) <- options) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            SheetOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBindSheet(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBackgroundBlurStyleAttribute(style: Option<BlurStyle>, options: Option<BackgroundBlurStyleOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(style) <- style) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let styleTmpValue = style
            thisSerializer.writeInt32(styleTmpValue.value);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        if (let Some(options) <- options) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            BackgroundBlurStyleOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBackgroundBlurStyle(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setDragPreviewOptionsAttribute(value: DragPreviewOptions, options: Option<DragInteractionOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        DragPreviewOptions_serializer.write(thisSerializer, value);
        if (let Some(options) <- options) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            DragInteractionOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setDragPreviewOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setLinearGradientAttribute(options: Option<LinearGradientOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(options) <- options) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            LinearGradientOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setLinearGradient(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBorderAttribute(value: Option<BorderOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            BorderOptions_serializer.write(thisSerializer, valueTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBorder(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSizeAttribute(value: Option<SizeOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            SizeOptions_serializer.write(thisSerializer, valueTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setSize(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setTransformAttribute(value: Option<Any>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (let Some(value) <- value) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueTmpValue = value
            thisSerializer.holdAndWriteObject(valueTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setTransform(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnChildTouchTestAttribute(event: ((value: ArrayList<TouchTestInfo>) -> String)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CommonMethod_setOnChildTouchTest(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnGestureRecognizerJudgeBeginAttribute(callback_: GestureRecognizerJudgeBeginCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._CommonMethod_setOnGestureRecognizerJudgeBegin(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnClickAttribute(event: Callback_ClickEvent_Void, distanceThreshold: Float64): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(event);
        ArkUIGeneratedNativeModule._CommonMethod_setOnClick(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length(), distanceThreshold);
        thisSerializer.release();
    }
    public open func setBackgroundColorAttribute(value: ResourceColor): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeInt32(valueForIdx0.value);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeNumber(valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeString(valueForIdx2);
        } else if (value.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let valueForIdx3 = value.getValue3()
            global_resource_Resource_serializer.write(thisSerializer, valueForIdx3);
        }
        ArkUIGeneratedNativeModule._CommonMethod_setBackgroundColor(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class ArkCommonPeer <: ArkCommonMethodPeer {
    public init(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkCommonPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Common_construct(peerId, flags)
        let _peer = ArkCommonPeer(_peerPtr, peerId, "Common", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setCommonOptionsAttribute(): Unit {
        ArkUIGeneratedNativeModule._CommonInterface_setCommonOptions(this.peer.ptr);
    }
}
public open class ArkCommonShapeMethodPeer <: ArkCommonMethodPeer {
    public init(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkCommonShapeMethodPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._CommonShapeMethod_construct(peerId, flags)
        let _peer = ArkCommonShapeMethodPeer(_peerPtr, peerId, "CommonShapeMethod", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setStrokeAttribute(value: ResourceColor): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeInt32(valueForIdx0.value);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeNumber(valueForIdx1);
        } else if (value.getSelector() == 2) {
            thisSerializer.writeInt8(Int8(2));
            let valueForIdx2 = value.getValue2()
            thisSerializer.writeString(valueForIdx2);
        } else if (value.getSelector() == 3) {
            thisSerializer.writeInt8(Int8(3));
            let valueForIdx3 = value.getValue3()
            global_resource_Resource_serializer.write(thisSerializer, valueForIdx3);
        }
        ArkUIGeneratedNativeModule._CommonShapeMethod_setStroke(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public open class ArkScrollableCommonMethodPeer <: ArkCommonMethodPeer {
    public init(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkScrollableCommonMethodPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._ScrollableCommonMethod_construct(peerId, flags)
        let _peer = ArkScrollableCommonMethodPeer(_peerPtr, peerId, "ScrollableCommonMethod", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setScrollBarWidthAttribute(value: Union_Number_String): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            thisSerializer.writeNumber(valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            thisSerializer.writeString(valueForIdx1);
        }
        ArkUIGeneratedNativeModule._ScrollableCommonMethod_setScrollBarWidth(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
}
public interface AnimationRangeInterfaces<T> {
    public mut open prop from_: T
    public mut open prop to: T
}
public open class AnimationRange<T> <: AnimationRangeInterfaces<T> {
    private var from_container: T
    public mut open prop from_: T
    {
        get() {
            return from_container
        }
        set(from_) {
            from_container = from_
        }
    }
    private var to_container: T
    public mut open prop to: T
    {
        get() {
            return to_container
        }
        set(to) {
            to_container = to
        }
    }
    init(from_: T, to: T) {
        this.from_container = from_
        this.to_container = to
    }
}
public interface AnimateParamInterfaces {
    public mut open prop duration: Option<Float64>
}
public open class AnimateParam <: AnimateParamInterfaces {
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
    init(duration: Option<Float64>) {
        this.duration_container = duration
    }
}
public interface GeometryInfoInterfaces <: SizeResultInterfaces {
    public mut open prop borderWidth: EdgeWidth
    public mut open prop margin: Margin
    public mut open prop padding: Padding
}
public open class GeometryInfo <: GeometryInfoInterfaces {
    private var borderWidth_container: EdgeWidth
    public mut open prop borderWidth: EdgeWidth
    {
        get() {
            return borderWidth_container
        }
        set(borderWidth) {
            borderWidth_container = borderWidth
        }
    }
    private var margin_container: Margin
    public mut open prop margin: Margin
    {
        get() {
            return margin_container
        }
        set(margin) {
            margin_container = margin
        }
    }
    private var padding_container: Padding
    public mut open prop padding: Padding
    {
        get() {
            return padding_container
        }
        set(padding) {
            padding_container = padding
        }
    }
    private var width_container: Float64
    public mut open prop width: Float64
    {
        get() {
            return width_container
        }
        set(width) {
            width_container = width
        }
    }
    private var height_container: Float64
    public mut open prop height: Float64
    {
        get() {
            return height_container
        }
        set(height) {
            height_container = height
        }
    }
    init(borderWidth: EdgeWidth, margin: Margin, padding: Padding, width: Float64, height: Float64) {
        this.borderWidth_container = borderWidth
        this.margin_container = margin
        this.padding_container = padding
        this.width_container = width
        this.height_container = height
    }
}
public interface MeasureResultInterfaces <: SizeResultInterfaces {
}
public open class MeasureResult <: MeasureResultInterfaces {
    private var width_container: Float64
    public mut open prop width: Float64
    {
        get() {
            return width_container
        }
        set(width) {
            width_container = width
        }
    }
    private var height_container: Float64
    public mut open prop height: Float64
    {
        get() {
            return height_container
        }
        set(height) {
            height_container = height
        }
    }
    init(width: Float64, height: Float64) {
        this.width_container = width
        this.height_container = height
    }
}
public interface LayoutChildInterfaces {
    public mut open prop stub: String
}
public open class LayoutChild <: LayoutChildInterfaces {
    private var stub_container: String
    public mut open prop stub: String
    {
        get() {
            return stub_container
        }
        set(stub) {
            stub_container = stub
        }
    }
    init(stub: String) {
        this.stub_container = stub
    }
}
public interface ComponentOptionsInterfaces {
    public mut open prop freezeWhenInactive: Bool
}
public open class ComponentOptions <: ComponentOptionsInterfaces {
    private var freezeWhenInactive_container: Bool
    public mut open prop freezeWhenInactive: Bool
    {
        get() {
            return freezeWhenInactive_container
        }
        set(freezeWhenInactive) {
            freezeWhenInactive_container = freezeWhenInactive
        }
    }
    init(freezeWhenInactive: Bool) {
        this.freezeWhenInactive_container = freezeWhenInactive
    }
}
public interface PreviewParamsInterfaces {
    public mut open prop title: Option<String>
    public mut open prop width: Option<Float64>
    public mut open prop height: Option<Float64>
    public mut open prop locale: Option<String>
    public mut open prop colorMode: Option<String>
    public mut open prop deviceType: Option<String>
    public mut open prop dpi: Option<Float64>
    public mut open prop orientation: Option<String>
    public mut open prop roundScreen: Option<Bool>
}
public open class PreviewParams <: PreviewParamsInterfaces {
    private var title_container: Option<String>
    public mut open prop title: Option<String>
    {
        get() {
            return title_container
        }
        set(title) {
            title_container = title
        }
    }
    private var width_container: Option<Float64>
    public mut open prop width: Option<Float64>
    {
        get() {
            return width_container
        }
        set(width) {
            width_container = width
        }
    }
    private var height_container: Option<Float64>
    public mut open prop height: Option<Float64>
    {
        get() {
            return height_container
        }
        set(height) {
            height_container = height
        }
    }
    private var locale_container: Option<String>
    public mut open prop locale: Option<String>
    {
        get() {
            return locale_container
        }
        set(locale) {
            locale_container = locale
        }
    }
    private var colorMode_container: Option<String>
    public mut open prop colorMode: Option<String>
    {
        get() {
            return colorMode_container
        }
        set(colorMode) {
            colorMode_container = colorMode
        }
    }
    private var deviceType_container: Option<String>
    public mut open prop deviceType: Option<String>
    {
        get() {
            return deviceType_container
        }
        set(deviceType) {
            deviceType_container = deviceType
        }
    }
    private var dpi_container: Option<Float64>
    public mut open prop dpi: Option<Float64>
    {
        get() {
            return dpi_container
        }
        set(dpi) {
            dpi_container = dpi
        }
    }
    private var orientation_container: Option<String>
    public mut open prop orientation: Option<String>
    {
        get() {
            return orientation_container
        }
        set(orientation) {
            orientation_container = orientation
        }
    }
    private var roundScreen_container: Option<Bool>
    public mut open prop roundScreen: Option<Bool>
    {
        get() {
            return roundScreen_container
        }
        set(roundScreen) {
            roundScreen_container = roundScreen
        }
    }
    init(title: Option<String>, width: Option<Float64>, height: Option<Float64>, locale: Option<String>, colorMode: Option<String>, deviceType: Option<String>, dpi: Option<Float64>, orientation: Option<String>, roundScreen: Option<Bool>) {
        this.title_container = title
        this.width_container = width
        this.height_container = height
        this.locale_container = locale
        this.colorMode_container = colorMode
        this.deviceType_container = deviceType
        this.dpi_container = dpi
        this.orientation_container = orientation
        this.roundScreen_container = roundScreen
    }
}
public type OnMoveHandler = (from_: Float64, to: Float64) -> Unit
public interface DynamicNodeInterfaces<T> {
}
public open class DynamicNode<T> <: DynamicNodeInterfaces<T> {
    init() {
    }
}
public interface CommonConfiguration_MenuItemConfigurationInterfaces {
    public mut open prop enabled: Bool
    public mut open prop contentModifier: ContentModifier<MenuItemConfiguration>
}
public open class CommonConfiguration_MenuItemConfiguration <: CommonConfiguration_MenuItemConfigurationInterfaces {
    private var enabled_container: Bool
    public mut open prop enabled: Bool
    {
        get() {
            return enabled_container
        }
        set(enabled) {
            enabled_container = enabled
        }
    }
    private var contentModifier_container: ContentModifier<MenuItemConfiguration>
    public mut open prop contentModifier: ContentModifier<MenuItemConfiguration>
    {
        get() {
            return contentModifier_container
        }
        set(contentModifier) {
            contentModifier_container = contentModifier
        }
    }
    init(enabled: Bool, contentModifier: ContentModifier<MenuItemConfiguration>) {
        this.enabled_container = enabled
        this.contentModifier_container = contentModifier
    }
}
public interface CommonConfigurationInterfaces<T> {
    public mut open prop enabled: Bool
    public mut open prop contentModifier: ContentModifier<T>
}
public open class CommonConfiguration<T> <: CommonConfigurationInterfaces<T> {
    private var enabled_container: Bool
    public mut open prop enabled: Bool
    {
        get() {
            return enabled_container
        }
        set(enabled) {
            enabled_container = enabled
        }
    }
    private var contentModifier_container: ContentModifier<T>
    public mut open prop contentModifier: ContentModifier<T>
    {
        get() {
            return contentModifier_container
        }
        set(contentModifier) {
            contentModifier_container = contentModifier
        }
    }
    init(enabled: Bool, contentModifier: ContentModifier<T>) {
        this.enabled_container = enabled
        this.contentModifier_container = contentModifier
    }
}
public interface StateStylesInterfaces {
    public mut open prop normal: Option<Any>
}
public open class StateStyles <: StateStylesInterfaces {
    private var normal_container: Option<Any>
    public mut open prop normal: Option<Any>
    {
        get() {
            return normal_container
        }
        set(normal) {
            normal_container = normal
        }
    }
    init(normal: Option<Any>) {
        this.normal_container = normal
    }
}
public interface SheetTitleOptionsInterfaces {
    public mut open prop title: ResourceStr
    public mut open prop subtitle: Option<ResourceStr>
}
public open class SheetTitleOptions <: SheetTitleOptionsInterfaces {
    private var title_container: ResourceStr
    public mut open prop title: ResourceStr
    {
        get() {
            return title_container
        }
        set(title) {
            title_container = title
        }
    }
    private var subtitle_container: Option<ResourceStr>
    public mut open prop subtitle: Option<ResourceStr>
    {
        get() {
            return subtitle_container
        }
        set(subtitle) {
            subtitle_container = subtitle
        }
    }
    init(title: ResourceStr, subtitle: Option<ResourceStr>) {
        this.title_container = title
        this.subtitle_container = subtitle
    }
}
public open class SheetSize {
    public static var MEDIUM: SheetSize = SheetSize(0)
    public static var LARGE: SheetSize = SheetSize(1)
    public static var FIT_CONTENT: SheetSize = SheetSize(2)
    public var value: Int32
    init(arg0: Int32) {
        value = arg0
    }
}
public open class SheetType {
    public static var BOTTOM: SheetType = SheetType(0)
    public static var CENTER: SheetType = SheetType(1)
    public static var POPUP: SheetType = SheetType(2)
    public var value: Int32
    init(arg0: Int32) {
        value = arg0
    }
}
public open class SheetMode {
    public static var OVERLAY: SheetMode = SheetMode(0)
    public static var EMBEDDED: SheetMode = SheetMode(1)
    public var value: Int32
    init(arg0: Int32) {
        value = arg0
    }
}
public open class ShadowStyle {
    public static var OUTER_DEFAULT_XS: ShadowStyle = ShadowStyle(0)
    public static var OUTER_DEFAULT_SM: ShadowStyle = ShadowStyle(1)
    public static var OUTER_DEFAULT_MD: ShadowStyle = ShadowStyle(2)
    public static var OUTER_DEFAULT_LG: ShadowStyle = ShadowStyle(3)
    public static var OUTER_FLOATING_SM: ShadowStyle = ShadowStyle(4)
    public static var OUTER_FLOATING_MD: ShadowStyle = ShadowStyle(5)
    public var value: Int32
    init(arg0: Int32) {
        value = arg0
    }
}
public open class ShadowType {
    public static var COLOR: ShadowType = ShadowType(0)
    public static var BLUR: ShadowType = ShadowType(1)
    public var value: Int32
    init(arg0: Int32) {
        value = arg0
    }
}
public interface ShadowOptionsInterfaces {
    public mut open prop radius: Union_Number_Resource
    public mut open prop type_: Option<ShadowType>
    public mut open prop color: Option<Union_Color_String_Resource_ColoringStrategy>
    public mut open prop offsetX: Option<Union_Number_Resource>
    public mut open prop offsetY: Option<Union_Number_Resource>
    public mut open prop fill: Option<Bool>
}
public open class ShadowOptions <: ShadowOptionsInterfaces {
    private var radius_container: Union_Number_Resource
    public mut open prop radius: Union_Number_Resource
    {
        get() {
            return radius_container
        }
        set(radius) {
            radius_container = radius
        }
    }
    private var type_container: Option<ShadowType>
    public mut open prop type_: Option<ShadowType>
    {
        get() {
            return type_container
        }
        set(type_) {
            type_container = type_
        }
    }
    private var color_container: Option<Union_Color_String_Resource_ColoringStrategy>
    public mut open prop color: Option<Union_Color_String_Resource_ColoringStrategy>
    {
        get() {
            return color_container
        }
        set(color) {
            color_container = color
        }
    }
    private var offsetX_container: Option<Union_Number_Resource>
    public mut open prop offsetX: Option<Union_Number_Resource>
    {
        get() {
            return offsetX_container
        }
        set(offsetX) {
            offsetX_container = offsetX
        }
    }
    private var offsetY_container: Option<Union_Number_Resource>
    public mut open prop offsetY: Option<Union_Number_Resource>
    {
        get() {
            return offsetY_container
        }
        set(offsetY) {
            offsetY_container = offsetY
        }
    }
    private var fill_container: Option<Bool>
    public mut open prop fill: Option<Bool>
    {
        get() {
            return fill_container
        }
        set(fill) {
            fill_container = fill
        }
    }
    init(radius: Union_Number_Resource, type_: Option<ShadowType>, color: Option<Union_Color_String_Resource_ColoringStrategy>, offsetX: Option<Union_Number_Resource>, offsetY: Option<Union_Number_Resource>, fill: Option<Bool>) {
        this.radius_container = radius
        this.type_container = type_
        this.color_container = color
        this.offsetX_container = offsetX
        this.offsetY_container = offsetY
        this.fill_container = fill
    }
}
public interface SheetDismissInterfaces {
    public mut open prop dismiss: (() -> Unit)
}
public open class SheetDismiss <: SheetDismissInterfaces {
    private var dismiss_container: (() -> Unit)
    public mut open prop dismiss: (() -> Unit)
    {
        get() {
            return dismiss_container
        }
        set(dismiss) {
            dismiss_container = dismiss
        }
    }
    init(dismiss: (() -> Unit)) {
        this.dismiss_container = dismiss
    }
}
public open class DismissReason {
    public static var PRESS_BACK: DismissReason = DismissReason(0)
    public static var TOUCH_OUTSIDE: DismissReason = DismissReason(1)
    public static var CLOSE_BUTTON: DismissReason = DismissReason(2)
    public static var SLIDE_DOWN: DismissReason = DismissReason(3)
    public var value: Int32
    init(arg0: Int32) {
        value = arg0
    }
}
public interface DismissSheetActionInterfaces {
    public mut open prop dismiss: Callback_Void_Void
    public mut open prop reason: DismissReason
}
public open class DismissSheetAction <: DismissSheetActionInterfaces {
    private var dismiss_container: Callback_Void_Void
    public mut open prop dismiss: Callback_Void_Void
    {
        get() {
            return dismiss_container
        }
        set(dismiss) {
            dismiss_container = dismiss
        }
    }
    private var reason_container: DismissReason
    public mut open prop reason: DismissReason
    {
        get() {
            return reason_container
        }
        set(reason) {
            reason_container = reason
        }
    }
    init(dismiss: Callback_Void_Void, reason: DismissReason) {
        this.dismiss_container = dismiss
        this.reason_container = reason
    }
}
public interface SpringBackActionInterfaces {
    public mut open prop springBack: Callback_Void_Void
}
public open class SpringBackAction <: SpringBackActionInterfaces {
    private var springBack_container: Callback_Void_Void
    public mut open prop springBack: Callback_Void_Void
    {
        get() {
            return springBack_container
        }
        set(springBack) {
            springBack_container = springBack
        }
    }
    init(springBack: Callback_Void_Void) {
        this.springBack_container = springBack
    }
}
public type CustomBuilder = () -> Unit
public interface BindOptionsInterfaces {
    public mut open prop backgroundColor: Option<ResourceColor>
    public mut open prop onAppear: Option<(() -> Unit)>
    public mut open prop onDisappear: Option<(() -> Unit)>
    public mut open prop onWillAppear: Option<(() -> Unit)>
    public mut open prop onWillDisappear: Option<(() -> Unit)>
}
public open class BindOptions <: BindOptionsInterfaces {
    private var backgroundColor_container: Option<ResourceColor>
    public mut open prop backgroundColor: Option<ResourceColor>
    {
        get() {
            return backgroundColor_container
        }
        set(backgroundColor) {
            backgroundColor_container = backgroundColor
        }
    }
    private var onAppear_container: Option<(() -> Unit)>
    public mut open prop onAppear: Option<(() -> Unit)>
    {
        get() {
            return onAppear_container
        }
        set(onAppear) {
            onAppear_container = onAppear
        }
    }
    private var onDisappear_container: Option<(() -> Unit)>
    public mut open prop onDisappear: Option<(() -> Unit)>
    {
        get() {
            return onDisappear_container
        }
        set(onDisappear) {
            onDisappear_container = onDisappear
        }
    }
    private var onWillAppear_container: Option<(() -> Unit)>
    public mut open prop onWillAppear: Option<(() -> Unit)>
    {
        get() {
            return onWillAppear_container
        }
        set(onWillAppear) {
            onWillAppear_container = onWillAppear
        }
    }
    private var onWillDisappear_container: Option<(() -> Unit)>
    public mut open prop onWillDisappear: Option<(() -> Unit)>
    {
        get() {
            return onWillDisappear_container
        }
        set(onWillDisappear) {
            onWillDisappear_container = onWillDisappear
        }
    }
    init(backgroundColor: Option<ResourceColor>, onAppear: Option<(() -> Unit)>, onDisappear: Option<(() -> Unit)>, onWillAppear: Option<(() -> Unit)>, onWillDisappear: Option<(() -> Unit)>) {
        this.backgroundColor_container = backgroundColor
        this.onAppear_container = onAppear
        this.onDisappear_container = onDisappear
        this.onWillAppear_container = onWillAppear
        this.onWillDisappear_container = onWillDisappear
    }
}
public open class ScrollSizeMode {
    public static var FOLLOW_DETENT: ScrollSizeMode = ScrollSizeMode(0)
    public static var CONTINUOUS: ScrollSizeMode = ScrollSizeMode(1)
    public var value: Int32
    init(arg0: Int32) {
        value = arg0
    }
}
public open class SheetKeyboardAvoidMode {
    public static var NONE: SheetKeyboardAvoidMode = SheetKeyboardAvoidMode(0)
    public static var TRANSLATE_AND_RESIZE: SheetKeyboardAvoidMode = SheetKeyboardAvoidMode(1)
    public static var RESIZE_ONLY: SheetKeyboardAvoidMode = SheetKeyboardAvoidMode(2)
    public static var TRANSLATE_AND_SCROLL: SheetKeyboardAvoidMode = SheetKeyboardAvoidMode(3)
    public var value: Int32
    init(arg0: Int32) {
        value = arg0
    }
}
public open class HoverModeAreaType {
    public static var TOP_SCREEN: HoverModeAreaType = HoverModeAreaType(0)
    public static var BOTTOM_SCREEN: HoverModeAreaType = HoverModeAreaType(1)
    public var value: Int32
    init(arg0: Int32) {
        value = arg0
    }
}
public interface SheetOptionsInterfaces <: BindOptionsInterfaces {
    public mut open prop height: Option<Union_SheetSize_Length>
    public mut open prop dragBar: Option<Bool>
    public mut open prop maskColor: Option<ResourceColor>
    public mut open prop detents: Option<Type_SheetOptions_detents>
    public mut open prop blurStyle: Option<BlurStyle>
    public mut open prop showClose: Option<Union_Boolean_Resource>
    public mut open prop preferType: Option<SheetType>
    public mut open prop title: Option<Union_SheetTitleOptions_CustomBuilder>
    public mut open prop shouldDismiss: Option<((sheetDismiss: SheetDismiss) -> Unit)>
    public mut open prop onWillDismiss: Option<Callback_DismissSheetAction_Void>
    public mut open prop onWillSpringBackWhenDismiss: Option<Callback_SpringBackAction_Void>
    public mut open prop enableOutsideInteractive: Option<Bool>
    public mut open prop width: Option<Dimension>
    public mut open prop borderWidth: Option<Union_Dimension_EdgeWidths_LocalizedEdgeWidths>
    public mut open prop borderColor: Option<Union_ResourceColor_EdgeColors_LocalizedEdgeColors>
    public mut open prop borderStyle: Option<Union_BorderStyle_EdgeStyles>
    public mut open prop shadow: Option<Union_ShadowOptions_ShadowStyle>
    public mut open prop onHeightDidChange: Option<((selected: Float64) -> Unit)>
    public mut open prop mode: Option<SheetMode>
    public mut open prop scrollSizeMode: Option<ScrollSizeMode>
    public mut open prop onDetentsDidChange: Option<((selected: Float64) -> Unit)>
    public mut open prop onWidthDidChange: Option<((selected: Float64) -> Unit)>
    public mut open prop onTypeDidChange: Option<Callback_SheetType_Void>
    public mut open prop uiContext: Option<UIContext>
    public mut open prop keyboardAvoidMode: Option<SheetKeyboardAvoidMode>
    public mut open prop enableHoverMode: Option<Bool>
    public mut open prop hoverModeArea: Option<HoverModeAreaType>
    public mut open prop offset: Option<Position>
}
public open class SheetOptions <: SheetOptionsInterfaces {
    private var height_container: Option<Union_SheetSize_Length>
    public mut open prop height: Option<Union_SheetSize_Length>
    {
        get() {
            return height_container
        }
        set(height) {
            height_container = height
        }
    }
    private var dragBar_container: Option<Bool>
    public mut open prop dragBar: Option<Bool>
    {
        get() {
            return dragBar_container
        }
        set(dragBar) {
            dragBar_container = dragBar
        }
    }
    private var maskColor_container: Option<ResourceColor>
    public mut open prop maskColor: Option<ResourceColor>
    {
        get() {
            return maskColor_container
        }
        set(maskColor) {
            maskColor_container = maskColor
        }
    }
    private var detents_container: Option<Type_SheetOptions_detents>
    public mut open prop detents: Option<Type_SheetOptions_detents>
    {
        get() {
            return detents_container
        }
        set(detents) {
            detents_container = detents
        }
    }
    private var blurStyle_container: Option<BlurStyle>
    public mut open prop blurStyle: Option<BlurStyle>
    {
        get() {
            return blurStyle_container
        }
        set(blurStyle) {
            blurStyle_container = blurStyle
        }
    }
    private var showClose_container: Option<Union_Boolean_Resource>
    public mut open prop showClose: Option<Union_Boolean_Resource>
    {
        get() {
            return showClose_container
        }
        set(showClose) {
            showClose_container = showClose
        }
    }
    private var preferType_container: Option<SheetType>
    public mut open prop preferType: Option<SheetType>
    {
        get() {
            return preferType_container
        }
        set(preferType) {
            preferType_container = preferType
        }
    }
    private var title_container: Option<Union_SheetTitleOptions_CustomBuilder>
    public mut open prop title: Option<Union_SheetTitleOptions_CustomBuilder>
    {
        get() {
            return title_container
        }
        set(title) {
            title_container = title
        }
    }
    private var shouldDismiss_container: Option<((sheetDismiss: SheetDismiss) -> Unit)>
    public mut open prop shouldDismiss: Option<((sheetDismiss: SheetDismiss) -> Unit)>
    {
        get() {
            return shouldDismiss_container
        }
        set(shouldDismiss) {
            shouldDismiss_container = shouldDismiss
        }
    }
    private var onWillDismiss_container: Option<Callback_DismissSheetAction_Void>
    public mut open prop onWillDismiss: Option<Callback_DismissSheetAction_Void>
    {
        get() {
            return onWillDismiss_container
        }
        set(onWillDismiss) {
            onWillDismiss_container = onWillDismiss
        }
    }
    private var onWillSpringBackWhenDismiss_container: Option<Callback_SpringBackAction_Void>
    public mut open prop onWillSpringBackWhenDismiss: Option<Callback_SpringBackAction_Void>
    {
        get() {
            return onWillSpringBackWhenDismiss_container
        }
        set(onWillSpringBackWhenDismiss) {
            onWillSpringBackWhenDismiss_container = onWillSpringBackWhenDismiss
        }
    }
    private var enableOutsideInteractive_container: Option<Bool>
    public mut open prop enableOutsideInteractive: Option<Bool>
    {
        get() {
            return enableOutsideInteractive_container
        }
        set(enableOutsideInteractive) {
            enableOutsideInteractive_container = enableOutsideInteractive
        }
    }
    private var width_container: Option<Dimension>
    public mut open prop width: Option<Dimension>
    {
        get() {
            return width_container
        }
        set(width) {
            width_container = width
        }
    }
    private var borderWidth_container: Option<Union_Dimension_EdgeWidths_LocalizedEdgeWidths>
    public mut open prop borderWidth: Option<Union_Dimension_EdgeWidths_LocalizedEdgeWidths>
    {
        get() {
            return borderWidth_container
        }
        set(borderWidth) {
            borderWidth_container = borderWidth
        }
    }
    private var borderColor_container: Option<Union_ResourceColor_EdgeColors_LocalizedEdgeColors>
    public mut open prop borderColor: Option<Union_ResourceColor_EdgeColors_LocalizedEdgeColors>
    {
        get() {
            return borderColor_container
        }
        set(borderColor) {
            borderColor_container = borderColor
        }
    }
    private var borderStyle_container: Option<Union_BorderStyle_EdgeStyles>
    public mut open prop borderStyle: Option<Union_BorderStyle_EdgeStyles>
    {
        get() {
            return borderStyle_container
        }
        set(borderStyle) {
            borderStyle_container = borderStyle
        }
    }
    private var shadow_container: Option<Union_ShadowOptions_ShadowStyle>
    public mut open prop shadow: Option<Union_ShadowOptions_ShadowStyle>
    {
        get() {
            return shadow_container
        }
        set(shadow) {
            shadow_container = shadow
        }
    }
    private var onHeightDidChange_container: Option<((selected: Float64) -> Unit)>
    public mut open prop onHeightDidChange: Option<((selected: Float64) -> Unit)>
    {
        get() {
            return onHeightDidChange_container
        }
        set(onHeightDidChange) {
            onHeightDidChange_container = onHeightDidChange
        }
    }
    private var mode_container: Option<SheetMode>
    public mut open prop mode: Option<SheetMode>
    {
        get() {
            return mode_container
        }
        set(mode) {
            mode_container = mode
        }
    }
    private var scrollSizeMode_container: Option<ScrollSizeMode>
    public mut open prop scrollSizeMode: Option<ScrollSizeMode>
    {
        get() {
            return scrollSizeMode_container
        }
        set(scrollSizeMode) {
            scrollSizeMode_container = scrollSizeMode
        }
    }
    private var onDetentsDidChange_container: Option<((selected: Float64) -> Unit)>
    public mut open prop onDetentsDidChange: Option<((selected: Float64) -> Unit)>
    {
        get() {
            return onDetentsDidChange_container
        }
        set(onDetentsDidChange) {
            onDetentsDidChange_container = onDetentsDidChange
        }
    }
    private var onWidthDidChange_container: Option<((selected: Float64) -> Unit)>
    public mut open prop onWidthDidChange: Option<((selected: Float64) -> Unit)>
    {
        get() {
            return onWidthDidChange_container
        }
        set(onWidthDidChange) {
            onWidthDidChange_container = onWidthDidChange
        }
    }
    private var onTypeDidChange_container: Option<Callback_SheetType_Void>
    public mut open prop onTypeDidChange: Option<Callback_SheetType_Void>
    {
        get() {
            return onTypeDidChange_container
        }
        set(onTypeDidChange) {
            onTypeDidChange_container = onTypeDidChange
        }
    }
    private var uiContext_container: Option<UIContext>
    public mut open prop uiContext: Option<UIContext>
    {
        get() {
            return uiContext_container
        }
        set(uiContext) {
            uiContext_container = uiContext
        }
    }
    private var keyboardAvoidMode_container: Option<SheetKeyboardAvoidMode>
    public mut open prop keyboardAvoidMode: Option<SheetKeyboardAvoidMode>
    {
        get() {
            return keyboardAvoidMode_container
        }
        set(keyboardAvoidMode) {
            keyboardAvoidMode_container = keyboardAvoidMode
        }
    }
    private var enableHoverMode_container: Option<Bool>
    public mut open prop enableHoverMode: Option<Bool>
    {
        get() {
            return enableHoverMode_container
        }
        set(enableHoverMode) {
            enableHoverMode_container = enableHoverMode
        }
    }
    private var hoverModeArea_container: Option<HoverModeAreaType>
    public mut open prop hoverModeArea: Option<HoverModeAreaType>
    {
        get() {
            return hoverModeArea_container
        }
        set(hoverModeArea) {
            hoverModeArea_container = hoverModeArea
        }
    }
    private var offset_container: Option<Position>
    public mut open prop offset: Option<Position>
    {
        get() {
            return offset_container
        }
        set(offset) {
            offset_container = offset
        }
    }
    private var backgroundColor_container: Option<ResourceColor>
    public mut open prop backgroundColor: Option<ResourceColor>
    {
        get() {
            return backgroundColor_container
        }
        set(backgroundColor) {
            backgroundColor_container = backgroundColor
        }
    }
    private var onAppear_container: Option<(() -> Unit)>
    public mut open prop onAppear: Option<(() -> Unit)>
    {
        get() {
            return onAppear_container
        }
        set(onAppear) {
            onAppear_container = onAppear
        }
    }
    private var onDisappear_container: Option<(() -> Unit)>
    public mut open prop onDisappear: Option<(() -> Unit)>
    {
        get() {
            return onDisappear_container
        }
        set(onDisappear) {
            onDisappear_container = onDisappear
        }
    }
    private var onWillAppear_container: Option<(() -> Unit)>
    public mut open prop onWillAppear: Option<(() -> Unit)>
    {
        get() {
            return onWillAppear_container
        }
        set(onWillAppear) {
            onWillAppear_container = onWillAppear
        }
    }
    private var onWillDisappear_container: Option<(() -> Unit)>
    public mut open prop onWillDisappear: Option<(() -> Unit)>
    {
        get() {
            return onWillDisappear_container
        }
        set(onWillDisappear) {
            onWillDisappear_container = onWillDisappear
        }
    }
    init(height: Option<Union_SheetSize_Length>, dragBar: Option<Bool>, maskColor: Option<ResourceColor>, detents: Option<Type_SheetOptions_detents>, blurStyle: Option<BlurStyle>, showClose: Option<Union_Boolean_Resource>, preferType: Option<SheetType>, title: Option<Union_SheetTitleOptions_CustomBuilder>, shouldDismiss: Option<((sheetDismiss: SheetDismiss) -> Unit)>, onWillDismiss: Option<Callback_DismissSheetAction_Void>, onWillSpringBackWhenDismiss: Option<Callback_SpringBackAction_Void>, enableOutsideInteractive: Option<Bool>, width: Option<Dimension>, borderWidth: Option<Union_Dimension_EdgeWidths_LocalizedEdgeWidths>, borderColor: Option<Union_ResourceColor_EdgeColors_LocalizedEdgeColors>, borderStyle: Option<Union_BorderStyle_EdgeStyles>, shadow: Option<Union_ShadowOptions_ShadowStyle>, onHeightDidChange: Option<((selected: Float64) -> Unit)>, mode: Option<SheetMode>, scrollSizeMode: Option<ScrollSizeMode>, onDetentsDidChange: Option<((selected: Float64) -> Unit)>, onWidthDidChange: Option<((selected: Float64) -> Unit)>, onTypeDidChange: Option<Callback_SheetType_Void>, uiContext: Option<UIContext>, keyboardAvoidMode: Option<SheetKeyboardAvoidMode>, enableHoverMode: Option<Bool>, hoverModeArea: Option<HoverModeAreaType>, offset: Option<Position>, backgroundColor: Option<ResourceColor>, onAppear: Option<(() -> Unit)>, onDisappear: Option<(() -> Unit)>, onWillAppear: Option<(() -> Unit)>, onWillDisappear: Option<(() -> Unit)>) {
        this.height_container = height
        this.dragBar_container = dragBar
        this.maskColor_container = maskColor
        this.detents_container = detents
        this.blurStyle_container = blurStyle
        this.showClose_container = showClose
        this.preferType_container = preferType
        this.title_container = title
        this.shouldDismiss_container = shouldDismiss
        this.onWillDismiss_container = onWillDismiss
        this.onWillSpringBackWhenDismiss_container = onWillSpringBackWhenDismiss
        this.enableOutsideInteractive_container = enableOutsideInteractive
        this.width_container = width
        this.borderWidth_container = borderWidth
        this.borderColor_container = borderColor
        this.borderStyle_container = borderStyle
        this.shadow_container = shadow
        this.onHeightDidChange_container = onHeightDidChange
        this.mode_container = mode
        this.scrollSizeMode_container = scrollSizeMode
        this.onDetentsDidChange_container = onDetentsDidChange
        this.onWidthDidChange_container = onWidthDidChange
        this.onTypeDidChange_container = onTypeDidChange
        this.uiContext_container = uiContext
        this.keyboardAvoidMode_container = keyboardAvoidMode
        this.enableHoverMode_container = enableHoverMode
        this.hoverModeArea_container = hoverModeArea
        this.offset_container = offset
        this.backgroundColor_container = backgroundColor
        this.onAppear_container = onAppear
        this.onDisappear_container = onDisappear
        this.onWillAppear_container = onWillAppear
        this.onWillDisappear_container = onWillDisappear
    }
}
public open class BlurStyle {
    public static var THIN: BlurStyle = BlurStyle(0)
    public var value: Int32
    init(arg0: Int32) {
        value = arg0
    }
}
public open class ThemeColorMode {
    public static var SYSTEM: ThemeColorMode = ThemeColorMode(0)
    public static var LIGHT: ThemeColorMode = ThemeColorMode(1)
    public static var DARK: ThemeColorMode = ThemeColorMode(2)
    public var value: Int32
    init(arg0: Int32) {
        value = arg0
    }
}
public open class AdaptiveColor {
    public static var DEFAULT: AdaptiveColor = AdaptiveColor(0)
    public var value: Int32
    init(arg0: Int32) {
        value = arg0
    }
}
public interface BlurOptionsInterfaces {
    public mut open prop grayscale: Tuple_Number_Number
}
public open class BlurOptions <: BlurOptionsInterfaces {
    private var grayscale_container: Tuple_Number_Number
    public mut open prop grayscale: Tuple_Number_Number
    {
        get() {
            return grayscale_container
        }
        set(grayscale) {
            grayscale_container = grayscale
        }
    }
    init(grayscale: Tuple_Number_Number) {
        this.grayscale_container = grayscale
    }
}
public interface BlurStyleOptionsInterfaces {
    public mut open prop colorMode: Option<ThemeColorMode>
    public mut open prop adaptiveColor: Option<AdaptiveColor>
    public mut open prop scale: Option<Float64>
    public mut open prop blurOptions: Option<BlurOptions>
}
public open class BlurStyleOptions <: BlurStyleOptionsInterfaces {
    private var colorMode_container: Option<ThemeColorMode>
    public mut open prop colorMode: Option<ThemeColorMode>
    {
        get() {
            return colorMode_container
        }
        set(colorMode) {
            colorMode_container = colorMode
        }
    }
    private var adaptiveColor_container: Option<AdaptiveColor>
    public mut open prop adaptiveColor: Option<AdaptiveColor>
    {
        get() {
            return adaptiveColor_container
        }
        set(adaptiveColor) {
            adaptiveColor_container = adaptiveColor
        }
    }
    private var scale_container: Option<Float64>
    public mut open prop scale: Option<Float64>
    {
        get() {
            return scale_container
        }
        set(scale) {
            scale_container = scale
        }
    }
    private var blurOptions_container: Option<BlurOptions>
    public mut open prop blurOptions: Option<BlurOptions>
    {
        get() {
            return blurOptions_container
        }
        set(blurOptions) {
            blurOptions_container = blurOptions
        }
    }
    init(colorMode: Option<ThemeColorMode>, adaptiveColor: Option<AdaptiveColor>, scale: Option<Float64>, blurOptions: Option<BlurOptions>) {
        this.colorMode_container = colorMode
        this.adaptiveColor_container = adaptiveColor
        this.scale_container = scale
        this.blurOptions_container = blurOptions
    }
}
public open class BlurStyleActivePolicy {
    public static var FOLLOWS_WINDOW_ACTIVE_STATE: BlurStyleActivePolicy = BlurStyleActivePolicy(0)
    public static var ALWAYS_ACTIVE: BlurStyleActivePolicy = BlurStyleActivePolicy(1)
    public static var ALWAYS_INACTIVE: BlurStyleActivePolicy = BlurStyleActivePolicy(2)
    public var value: Int32
    init(arg0: Int32) {
        value = arg0
    }
}
public open class BlurType {
    public static var WITHIN_WINDOW: BlurType = BlurType(0)
    public static var BEHIND_WINDOW: BlurType = BlurType(1)
    public var value: Int32
    init(arg0: Int32) {
        value = arg0
    }
}
public interface BackgroundBlurStyleOptionsInterfaces <: BlurStyleOptionsInterfaces {
    public mut open prop policy: Option<BlurStyleActivePolicy>
    public mut open prop inactiveColor: Option<ResourceColor>
}
public open class BackgroundBlurStyleOptions <: BackgroundBlurStyleOptionsInterfaces {
    private var policy_container: Option<BlurStyleActivePolicy>
    public mut open prop policy: Option<BlurStyleActivePolicy>
    {
        get() {
            return policy_container
        }
        set(policy) {
            policy_container = policy
        }
    }
    private var inactiveColor_container: Option<ResourceColor>
    public mut open prop inactiveColor: Option<ResourceColor>
    {
        get() {
            return inactiveColor_container
        }
        set(inactiveColor) {
            inactiveColor_container = inactiveColor
        }
    }
    private var colorMode_container: Option<ThemeColorMode>
    public mut open prop colorMode: Option<ThemeColorMode>
    {
        get() {
            return colorMode_container
        }
        set(colorMode) {
            colorMode_container = colorMode
        }
    }
    private var adaptiveColor_container: Option<AdaptiveColor>
    public mut open prop adaptiveColor: Option<AdaptiveColor>
    {
        get() {
            return adaptiveColor_container
        }
        set(adaptiveColor) {
            adaptiveColor_container = adaptiveColor
        }
    }
    private var scale_container: Option<Float64>
    public mut open prop scale: Option<Float64>
    {
        get() {
            return scale_container
        }
        set(scale) {
            scale_container = scale
        }
    }
    private var blurOptions_container: Option<BlurOptions>
    public mut open prop blurOptions: Option<BlurOptions>
    {
        get() {
            return blurOptions_container
        }
        set(blurOptions) {
            blurOptions_container = blurOptions
        }
    }
    init(policy: Option<BlurStyleActivePolicy>, inactiveColor: Option<ResourceColor>, colorMode: Option<ThemeColorMode>, adaptiveColor: Option<AdaptiveColor>, scale: Option<Float64>, blurOptions: Option<BlurOptions>) {
        this.policy_container = policy
        this.inactiveColor_container = inactiveColor
        this.colorMode_container = colorMode
        this.adaptiveColor_container = adaptiveColor
        this.scale_container = scale
        this.blurOptions_container = blurOptions
    }
}
public interface SizeResultInterfaces {
    public mut open prop width: Float64
    public mut open prop height: Float64
}
public open class SizeResult <: SizeResultInterfaces {
    private var width_container: Float64
    public mut open prop width: Float64
    {
        get() {
            return width_container
        }
        set(width) {
            width_container = width
        }
    }
    private var height_container: Float64
    public mut open prop height: Float64
    {
        get() {
            return height_container
        }
        set(height) {
            height_container = height
        }
    }
    init(width: Float64, height: Float64) {
        this.width_container = width
        this.height_container = height
    }
}
public interface EdgeWidthsInterfaces {
    public mut open prop top: Option<Length>
    public mut open prop right: Option<Length>
    public mut open prop bottom: Option<Length>
    public mut open prop left: Option<Length>
}
public open class EdgeWidths <: EdgeWidthsInterfaces {
    private var top_container: Option<Length>
    public mut open prop top: Option<Length>
    {
        get() {
            return top_container
        }
        set(top) {
            top_container = top
        }
    }
    private var right_container: Option<Length>
    public mut open prop right: Option<Length>
    {
        get() {
            return right_container
        }
        set(right) {
            right_container = right
        }
    }
    private var bottom_container: Option<Length>
    public mut open prop bottom: Option<Length>
    {
        get() {
            return bottom_container
        }
        set(bottom) {
            bottom_container = bottom
        }
    }
    private var left_container: Option<Length>
    public mut open prop left: Option<Length>
    {
        get() {
            return left_container
        }
        set(left) {
            left_container = left
        }
    }
    init(top: Option<Length>, right: Option<Length>, bottom: Option<Length>, left: Option<Length>) {
        this.top_container = top
        this.right_container = right
        this.bottom_container = bottom
        this.left_container = left
    }
}
public interface PaddingInterfaces {
    public mut open prop top: Option<Length>
    public mut open prop right: Option<Length>
    public mut open prop bottom: Option<Length>
    public mut open prop left: Option<Length>
}
public open class Padding <: PaddingInterfaces {
    private var top_container: Option<Length>
    public mut open prop top: Option<Length>
    {
        get() {
            return top_container
        }
        set(top) {
            top_container = top
        }
    }
    private var right_container: Option<Length>
    public mut open prop right: Option<Length>
    {
        get() {
            return right_container
        }
        set(right) {
            right_container = right
        }
    }
    private var bottom_container: Option<Length>
    public mut open prop bottom: Option<Length>
    {
        get() {
            return bottom_container
        }
        set(bottom) {
            bottom_container = bottom
        }
    }
    private var left_container: Option<Length>
    public mut open prop left: Option<Length>
    {
        get() {
            return left_container
        }
        set(left) {
            left_container = left
        }
    }
    init(top: Option<Length>, right: Option<Length>, bottom: Option<Length>, left: Option<Length>) {
        this.top_container = top
        this.right_container = right
        this.bottom_container = bottom
        this.left_container = left
    }
}
public interface LinearGradientOptionsInterfaces {
    public mut open prop angle: Option<Union_Number_String>
    public mut open prop direction: Option<GradientDirection>
    public mut open prop colors: ArrayList<Tuple_ResourceColor_Number>
    public mut open prop repeating: Option<Bool>
}
public open class LinearGradientOptions <: LinearGradientOptionsInterfaces {
    private var angle_container: Option<Union_Number_String>
    public mut open prop angle: Option<Union_Number_String>
    {
        get() {
            return angle_container
        }
        set(angle) {
            angle_container = angle
        }
    }
    private var direction_container: Option<GradientDirection>
    public mut open prop direction: Option<GradientDirection>
    {
        get() {
            return direction_container
        }
        set(direction) {
            direction_container = direction
        }
    }
    private var colors_container: ArrayList<Tuple_ResourceColor_Number>
    public mut open prop colors: ArrayList<Tuple_ResourceColor_Number>
    {
        get() {
            return colors_container
        }
        set(colors) {
            colors_container = colors
        }
    }
    private var repeating_container: Option<Bool>
    public mut open prop repeating: Option<Bool>
    {
        get() {
            return repeating_container
        }
        set(repeating) {
            repeating_container = repeating
        }
    }
    init(angle: Option<Union_Number_String>, direction: Option<GradientDirection>, colors: ArrayList<Tuple_ResourceColor_Number>, repeating: Option<Bool>) {
        this.angle_container = angle
        this.direction_container = direction
        this.colors_container = colors
        this.repeating_container = repeating
    }
}
public interface LocalizedEdgeWidthsInterfaces {
    public mut open prop top: Option<LengthMetrics>
    public mut open prop end: Option<LengthMetrics>
    public mut open prop bottom: Option<LengthMetrics>
    public mut open prop start: Option<LengthMetrics>
}
public open class LocalizedEdgeWidths <: LocalizedEdgeWidthsInterfaces {
    private var top_container: Option<LengthMetrics>
    public mut open prop top: Option<LengthMetrics>
    {
        get() {
            return top_container
        }
        set(top) {
            top_container = top
        }
    }
    private var end_container: Option<LengthMetrics>
    public mut open prop end: Option<LengthMetrics>
    {
        get() {
            return end_container
        }
        set(end) {
            end_container = end
        }
    }
    private var bottom_container: Option<LengthMetrics>
    public mut open prop bottom: Option<LengthMetrics>
    {
        get() {
            return bottom_container
        }
        set(bottom) {
            bottom_container = bottom
        }
    }
    private var start_container: Option<LengthMetrics>
    public mut open prop start: Option<LengthMetrics>
    {
        get() {
            return start_container
        }
        set(start) {
            start_container = start
        }
    }
    init(top: Option<LengthMetrics>, end: Option<LengthMetrics>, bottom: Option<LengthMetrics>, start: Option<LengthMetrics>) {
        this.top_container = top
        this.end_container = end
        this.bottom_container = bottom
        this.start_container = start
    }
}
public interface EdgeColorsInterfaces {
    public mut open prop top: Option<ResourceColor>
    public mut open prop right: Option<ResourceColor>
    public mut open prop bottom: Option<ResourceColor>
    public mut open prop left: Option<ResourceColor>
}
public open class EdgeColors <: EdgeColorsInterfaces {
    private var top_container: Option<ResourceColor>
    public mut open prop top: Option<ResourceColor>
    {
        get() {
            return top_container
        }
        set(top) {
            top_container = top
        }
    }
    private var right_container: Option<ResourceColor>
    public mut open prop right: Option<ResourceColor>
    {
        get() {
            return right_container
        }
        set(right) {
            right_container = right
        }
    }
    private var bottom_container: Option<ResourceColor>
    public mut open prop bottom: Option<ResourceColor>
    {
        get() {
            return bottom_container
        }
        set(bottom) {
            bottom_container = bottom
        }
    }
    private var left_container: Option<ResourceColor>
    public mut open prop left: Option<ResourceColor>
    {
        get() {
            return left_container
        }
        set(left) {
            left_container = left
        }
    }
    init(top: Option<ResourceColor>, right: Option<ResourceColor>, bottom: Option<ResourceColor>, left: Option<ResourceColor>) {
        this.top_container = top
        this.right_container = right
        this.bottom_container = bottom
        this.left_container = left
    }
}
public interface LocalizedEdgeColorsInterfaces {
    public mut open prop top: Option<ResourceColor>
    public mut open prop end: Option<ResourceColor>
    public mut open prop bottom: Option<ResourceColor>
    public mut open prop start: Option<ResourceColor>
}
public open class LocalizedEdgeColors <: LocalizedEdgeColorsInterfaces {
    private var top_container: Option<ResourceColor>
    public mut open prop top: Option<ResourceColor>
    {
        get() {
            return top_container
        }
        set(top) {
            top_container = top
        }
    }
    private var end_container: Option<ResourceColor>
    public mut open prop end: Option<ResourceColor>
    {
        get() {
            return end_container
        }
        set(end) {
            end_container = end
        }
    }
    private var bottom_container: Option<ResourceColor>
    public mut open prop bottom: Option<ResourceColor>
    {
        get() {
            return bottom_container
        }
        set(bottom) {
            bottom_container = bottom
        }
    }
    private var start_container: Option<ResourceColor>
    public mut open prop start: Option<ResourceColor>
    {
        get() {
            return start_container
        }
        set(start) {
            start_container = start
        }
    }
    init(top: Option<ResourceColor>, end: Option<ResourceColor>, bottom: Option<ResourceColor>, start: Option<ResourceColor>) {
        this.top_container = top
        this.end_container = end
        this.bottom_container = bottom
        this.start_container = start
    }
}
public interface BorderRadiusesInterfaces {
    public mut open prop topLeft: Option<Length>
    public mut open prop topRight: Option<Length>
    public mut open prop bottomLeft: Option<Length>
    public mut open prop bottomRight: Option<Length>
}
public open class BorderRadiuses <: BorderRadiusesInterfaces {
    private var topLeft_container: Option<Length>
    public mut open prop topLeft: Option<Length>
    {
        get() {
            return topLeft_container
        }
        set(topLeft) {
            topLeft_container = topLeft
        }
    }
    private var topRight_container: Option<Length>
    public mut open prop topRight: Option<Length>
    {
        get() {
            return topRight_container
        }
        set(topRight) {
            topRight_container = topRight
        }
    }
    private var bottomLeft_container: Option<Length>
    public mut open prop bottomLeft: Option<Length>
    {
        get() {
            return bottomLeft_container
        }
        set(bottomLeft) {
            bottomLeft_container = bottomLeft
        }
    }
    private var bottomRight_container: Option<Length>
    public mut open prop bottomRight: Option<Length>
    {
        get() {
            return bottomRight_container
        }
        set(bottomRight) {
            bottomRight_container = bottomRight
        }
    }
    init(topLeft: Option<Length>, topRight: Option<Length>, bottomLeft: Option<Length>, bottomRight: Option<Length>) {
        this.topLeft_container = topLeft
        this.topRight_container = topRight
        this.bottomLeft_container = bottomLeft
        this.bottomRight_container = bottomRight
    }
}
public interface LocalizedBorderRadiusesInterfaces {
    public mut open prop topStart: Option<LengthMetrics>
    public mut open prop topEnd: Option<LengthMetrics>
    public mut open prop bottomStart: Option<LengthMetrics>
    public mut open prop bottomEnd: Option<LengthMetrics>
}
public open class LocalizedBorderRadiuses <: LocalizedBorderRadiusesInterfaces {
    private var topStart_container: Option<LengthMetrics>
    public mut open prop topStart: Option<LengthMetrics>
    {
        get() {
            return topStart_container
        }
        set(topStart) {
            topStart_container = topStart
        }
    }
    private var topEnd_container: Option<LengthMetrics>
    public mut open prop topEnd: Option<LengthMetrics>
    {
        get() {
            return topEnd_container
        }
        set(topEnd) {
            topEnd_container = topEnd
        }
    }
    private var bottomStart_container: Option<LengthMetrics>
    public mut open prop bottomStart: Option<LengthMetrics>
    {
        get() {
            return bottomStart_container
        }
        set(bottomStart) {
            bottomStart_container = bottomStart
        }
    }
    private var bottomEnd_container: Option<LengthMetrics>
    public mut open prop bottomEnd: Option<LengthMetrics>
    {
        get() {
            return bottomEnd_container
        }
        set(bottomEnd) {
            bottomEnd_container = bottomEnd
        }
    }
    init(topStart: Option<LengthMetrics>, topEnd: Option<LengthMetrics>, bottomStart: Option<LengthMetrics>, bottomEnd: Option<LengthMetrics>) {
        this.topStart_container = topStart
        this.topEnd_container = topEnd
        this.bottomStart_container = bottomStart
        this.bottomEnd_container = bottomEnd
    }
}
public open class BorderStyle {
    public static var DOTTED: BorderStyle = BorderStyle(0)
    public static var DASHED: BorderStyle = BorderStyle(1)
    public static var SOLID: BorderStyle = BorderStyle(2)
    public var value: Int32
    init(arg0: Int32) {
        value = arg0
    }
}
public interface EdgeStylesInterfaces {
    public mut open prop top: Option<BorderStyle>
    public mut open prop right: Option<BorderStyle>
    public mut open prop bottom: Option<BorderStyle>
    public mut open prop left: Option<BorderStyle>
}
public open class EdgeStyles <: EdgeStylesInterfaces {
    private var top_container: Option<BorderStyle>
    public mut open prop top: Option<BorderStyle>
    {
        get() {
            return top_container
        }
        set(top) {
            top_container = top
        }
    }
    private var right_container: Option<BorderStyle>
    public mut open prop right: Option<BorderStyle>
    {
        get() {
            return right_container
        }
        set(right) {
            right_container = right
        }
    }
    private var bottom_container: Option<BorderStyle>
    public mut open prop bottom: Option<BorderStyle>
    {
        get() {
            return bottom_container
        }
        set(bottom) {
            bottom_container = bottom
        }
    }
    private var left_container: Option<BorderStyle>
    public mut open prop left: Option<BorderStyle>
    {
        get() {
            return left_container
        }
        set(left) {
            left_container = left
        }
    }
    init(top: Option<BorderStyle>, right: Option<BorderStyle>, bottom: Option<BorderStyle>, left: Option<BorderStyle>) {
        this.top_container = top
        this.right_container = right
        this.bottom_container = bottom
        this.left_container = left
    }
}
public interface BorderOptionsInterfaces {
}
public open class BorderOptions <: BorderOptionsInterfaces {
    init() {
    }
}
public open class DragPreviewMode {
    public static var AUTO: DragPreviewMode = DragPreviewMode(1)
    public static var DISABLE_SCALE: DragPreviewMode = DragPreviewMode(2)
    public static var ENABLE_DEFAULT_SHADOW: DragPreviewMode = DragPreviewMode(3)
    public static var ENABLE_DEFAULT_RADIUS: DragPreviewMode = DragPreviewMode(4)
    public var value: Int32
    init(arg0: Int32) {
        value = arg0
    }
}
public open class DraggingSizeChangeEffect {
    public static var DEFAULT: DraggingSizeChangeEffect = DraggingSizeChangeEffect(0)
    public static var SIZE_TRANSITION: DraggingSizeChangeEffect = DraggingSizeChangeEffect(1)
    public static var SIZE_CONTENT_TRANSITION: DraggingSizeChangeEffect = DraggingSizeChangeEffect(2)
    public var value: Int32
    init(arg0: Int32) {
        value = arg0
    }
}
public interface DragPreviewOptionsInterfaces {
    public mut open prop mode: Option<Union_DragPreviewMode_Array_DragPreviewMode>
    public mut open prop numberBadge: Option<Union_Boolean_Number>
    public mut open prop sizeChangeEffect: Option<DraggingSizeChangeEffect>
}
public open class DragPreviewOptions <: DragPreviewOptionsInterfaces {
    private var mode_container: Option<Union_DragPreviewMode_Array_DragPreviewMode>
    public mut open prop mode: Option<Union_DragPreviewMode_Array_DragPreviewMode>
    {
        get() {
            return mode_container
        }
        set(mode) {
            mode_container = mode
        }
    }
    private var numberBadge_container: Option<Union_Boolean_Number>
    public mut open prop numberBadge: Option<Union_Boolean_Number>
    {
        get() {
            return numberBadge_container
        }
        set(numberBadge) {
            numberBadge_container = numberBadge
        }
    }
    private var sizeChangeEffect_container: Option<DraggingSizeChangeEffect>
    public mut open prop sizeChangeEffect: Option<DraggingSizeChangeEffect>
    {
        get() {
            return sizeChangeEffect_container
        }
        set(sizeChangeEffect) {
            sizeChangeEffect_container = sizeChangeEffect
        }
    }
    init(mode: Option<Union_DragPreviewMode_Array_DragPreviewMode>, numberBadge: Option<Union_Boolean_Number>, sizeChangeEffect: Option<DraggingSizeChangeEffect>) {
        this.mode_container = mode
        this.numberBadge_container = numberBadge
        this.sizeChangeEffect_container = sizeChangeEffect
    }
}
public interface DateRangeInterfaces {
    public mut open prop start: Option<DateTime>
    public mut open prop end: Option<DateTime>
}
public open class DateRange <: DateRangeInterfaces {
    private var start_container: Option<DateTime>
    public mut open prop start: Option<DateTime>
    {
        get() {
            return start_container
        }
        set(start) {
            start_container = start
        }
    }
    private var end_container: Option<DateTime>
    public mut open prop end: Option<DateTime>
    {
        get() {
            return end_container
        }
        set(end) {
            end_container = end
        }
    }
    init(start: Option<DateTime>, end: Option<DateTime>) {
        this.start_container = start
        this.end_container = end
    }
}
public interface DragInteractionOptionsInterfaces {
    public mut open prop isMultiSelectionEnabled: Option<Bool>
    public mut open prop defaultAnimationBeforeLifting: Option<Bool>
    public mut open prop enableEdgeAutoScroll: Option<Bool>
    public mut open prop enableHapticFeedback: Option<Bool>
    public mut open prop isLiftingDisabled: Option<Bool>
}
public open class DragInteractionOptions <: DragInteractionOptionsInterfaces {
    private var isMultiSelectionEnabled_container: Option<Bool>
    public mut open prop isMultiSelectionEnabled: Option<Bool>
    {
        get() {
            return isMultiSelectionEnabled_container
        }
        set(isMultiSelectionEnabled) {
            isMultiSelectionEnabled_container = isMultiSelectionEnabled
        }
    }
    private var defaultAnimationBeforeLifting_container: Option<Bool>
    public mut open prop defaultAnimationBeforeLifting: Option<Bool>
    {
        get() {
            return defaultAnimationBeforeLifting_container
        }
        set(defaultAnimationBeforeLifting) {
            defaultAnimationBeforeLifting_container = defaultAnimationBeforeLifting
        }
    }
    private var enableEdgeAutoScroll_container: Option<Bool>
    public mut open prop enableEdgeAutoScroll: Option<Bool>
    {
        get() {
            return enableEdgeAutoScroll_container
        }
        set(enableEdgeAutoScroll) {
            enableEdgeAutoScroll_container = enableEdgeAutoScroll
        }
    }
    private var enableHapticFeedback_container: Option<Bool>
    public mut open prop enableHapticFeedback: Option<Bool>
    {
        get() {
            return enableHapticFeedback_container
        }
        set(enableHapticFeedback) {
            enableHapticFeedback_container = enableHapticFeedback
        }
    }
    private var isLiftingDisabled_container: Option<Bool>
    public mut open prop isLiftingDisabled: Option<Bool>
    {
        get() {
            return isLiftingDisabled_container
        }
        set(isLiftingDisabled) {
            isLiftingDisabled_container = isLiftingDisabled
        }
    }
    init(isMultiSelectionEnabled: Option<Bool>, defaultAnimationBeforeLifting: Option<Bool>, enableEdgeAutoScroll: Option<Bool>, enableHapticFeedback: Option<Bool>, isLiftingDisabled: Option<Bool>) {
        this.isMultiSelectionEnabled_container = isMultiSelectionEnabled
        this.defaultAnimationBeforeLifting_container = defaultAnimationBeforeLifting
        this.enableEdgeAutoScroll_container = enableEdgeAutoScroll
        this.enableHapticFeedback_container = enableHapticFeedback
        this.isLiftingDisabled_container = isLiftingDisabled
    }
}
public open class GradientDirection {
    public static var LEFT: GradientDirection = GradientDirection(0)
    public static var TOP: GradientDirection = GradientDirection(1)
    public static var RIGHT: GradientDirection = GradientDirection(2)
    public static var BOTTOM: GradientDirection = GradientDirection(3)
    public static var LEFT_TOP: GradientDirection = GradientDirection(4)
    public static var LEFT_BOTTOM: GradientDirection = GradientDirection(5)
    public static var RIGHT_TOP: GradientDirection = GradientDirection(6)
    public static var RIGHT_BOTTOM: GradientDirection = GradientDirection(7)
    public static var NONE: GradientDirection = GradientDirection(8)
    public var value: Int32
    init(arg0: Int32) {
        value = arg0
    }
}
public open class Alignment {
    public static var TOP_START: Alignment = Alignment(0)
    public static var TOP: Alignment = Alignment(1)
    public static var TOP_END: Alignment = Alignment(2)
    public static var START: Alignment = Alignment(3)
    public static var CENTER: Alignment = Alignment(4)
    public static var END: Alignment = Alignment(5)
    public static var BOTTOM_START: Alignment = Alignment(6)
    public static var BOTTOM: Alignment = Alignment(7)
    public static var BOTTOM_END: Alignment = Alignment(8)
    public var value: Int32
    init(arg0: Int32) {
        value = arg0
    }
}
public interface LinearGradient_commonInterfaces {
    public mut open prop angle: Option<Union_Number_String>
    public mut open prop direction: Option<GradientDirection>
    public mut open prop colors: ArrayList<Tuple_ResourceColor_Number>
    public mut open prop repeating: Option<Bool>
}
public open class LinearGradient_common <: LinearGradient_commonInterfaces {
    private var angle_container: Option<Union_Number_String>
    public mut open prop angle: Option<Union_Number_String>
    {
        get() {
            return angle_container
        }
        set(angle) {
            angle_container = angle
        }
    }
    private var direction_container: Option<GradientDirection>
    public mut open prop direction: Option<GradientDirection>
    {
        get() {
            return direction_container
        }
        set(direction) {
            direction_container = direction
        }
    }
    private var colors_container: ArrayList<Tuple_ResourceColor_Number>
    public mut open prop colors: ArrayList<Tuple_ResourceColor_Number>
    {
        get() {
            return colors_container
        }
        set(colors) {
            colors_container = colors
        }
    }
    private var repeating_container: Option<Bool>
    public mut open prop repeating: Option<Bool>
    {
        get() {
            return repeating_container
        }
        set(repeating) {
            repeating_container = repeating
        }
    }
    init(angle: Option<Union_Number_String>, direction: Option<GradientDirection>, colors: ArrayList<Tuple_ResourceColor_Number>, repeating: Option<Bool>) {
        this.angle_container = angle
        this.direction_container = direction
        this.colors_container = colors
        this.repeating_container = repeating
    }
}
public interface LayoutPolicyInterfaces {
}
public open class LayoutPolicy <: LayoutPolicyInterfaces {
    init() {
    }
}
public interface CommonMethodInterfaces {
}
public open class CommonMethod <: CommonMethodInterfaces {
    init() {
    }
}
public interface RectangleInterfaces {
    public mut open prop x: Option<Length>
    public mut open prop y: Option<Length>
    public mut open prop width: Option<Length>
    public mut open prop height: Option<Length>
}
public open class Rectangle <: RectangleInterfaces {
    private var x_container: Option<Length>
    public mut open prop x: Option<Length>
    {
        get() {
            return x_container
        }
        set(x) {
            x_container = x
        }
    }
    private var y_container: Option<Length>
    public mut open prop y: Option<Length>
    {
        get() {
            return y_container
        }
        set(y) {
            y_container = y
        }
    }
    private var width_container: Option<Length>
    public mut open prop width: Option<Length>
    {
        get() {
            return width_container
        }
        set(width) {
            width_container = width
        }
    }
    private var height_container: Option<Length>
    public mut open prop height: Option<Length>
    {
        get() {
            return height_container
        }
        set(height) {
            height_container = height
        }
    }
    init(x: Option<Length>, y: Option<Length>, width: Option<Length>, height: Option<Length>) {
        this.x_container = x
        this.y_container = y
        this.width_container = width
        this.height_container = height
    }
}
public interface RectResultInterfaces {
    public mut open prop x: Float64
    public mut open prop y: Float64
    public mut open prop width: Float64
    public mut open prop height: Float64
}
public open class RectResult <: RectResultInterfaces {
    private var x_container: Float64
    public mut open prop x: Float64
    {
        get() {
            return x_container
        }
        set(x) {
            x_container = x
        }
    }
    private var y_container: Float64
    public mut open prop y: Float64
    {
        get() {
            return y_container
        }
        set(y) {
            y_container = y
        }
    }
    private var width_container: Float64
    public mut open prop width: Float64
    {
        get() {
            return width_container
        }
        set(width) {
            width_container = width
        }
    }
    private var height_container: Float64
    public mut open prop height: Float64
    {
        get() {
            return height_container
        }
        set(height) {
            height_container = height
        }
    }
    init(x: Float64, y: Float64, width: Float64, height: Float64) {
        this.x_container = x
        this.y_container = y
        this.width_container = width
        this.height_container = height
    }
}
public interface TouchTestInfoInterfaces {
    public mut open prop windowX: Float64
    public mut open prop windowY: Float64
    public mut open prop parentX: Float64
    public mut open prop parentY: Float64
    public mut open prop x: Float64
    public mut open prop y: Float64
    public mut open prop rect: RectResult
    public mut open prop id: String
}
public open class TouchTestInfo <: TouchTestInfoInterfaces {
    private var windowX_container: Float64
    public mut open prop windowX: Float64
    {
        get() {
            return windowX_container
        }
        set(windowX) {
            windowX_container = windowX
        }
    }
    private var windowY_container: Float64
    public mut open prop windowY: Float64
    {
        get() {
            return windowY_container
        }
        set(windowY) {
            windowY_container = windowY
        }
    }
    private var parentX_container: Float64
    public mut open prop parentX: Float64
    {
        get() {
            return parentX_container
        }
        set(parentX) {
            parentX_container = parentX
        }
    }
    private var parentY_container: Float64
    public mut open prop parentY: Float64
    {
        get() {
            return parentY_container
        }
        set(parentY) {
            parentY_container = parentY
        }
    }
    private var x_container: Float64
    public mut open prop x: Float64
    {
        get() {
            return x_container
        }
        set(x) {
            x_container = x
        }
    }
    private var y_container: Float64
    public mut open prop y: Float64
    {
        get() {
            return y_container
        }
        set(y) {
            y_container = y
        }
    }
    private var rect_container: RectResult
    public mut open prop rect: RectResult
    {
        get() {
            return rect_container
        }
        set(rect) {
            rect_container = rect
        }
    }
    private var id_container: String
    public mut open prop id: String
    {
        get() {
            return id_container
        }
        set(id) {
            id_container = id
        }
    }
    init(windowX: Float64, windowY: Float64, parentX: Float64, parentY: Float64, x: Float64, y: Float64, rect: RectResult, id: String) {
        this.windowX_container = windowX
        this.windowY_container = windowY
        this.parentX_container = parentX
        this.parentY_container = parentY
        this.x_container = x
        this.y_container = y
        this.rect_container = rect
        this.id_container = id
    }
}
public interface CommonInterfaceInterfaces {
}
public open class CommonInterface <: CommonInterfaceInterfaces {
    init() {
    }
}
public interface CommonAttributeInterfaces <: CommonMethodInterfaces {
}
public open class CommonAttribute <: CommonAttributeInterfaces {
    init() {
    }
}
public interface CommonShapeMethodInterfaces <: CommonMethodInterfaces {
}
public open class CommonShapeMethod <: CommonShapeMethodInterfaces {
    init() {
    }
}
public interface ScrollableCommonMethodInterfaces <: CommonMethodInterfaces {
}
public open class ScrollableCommonMethod <: ScrollableCommonMethodInterfaces {
    init() {
    }
}
public interface EventTargetInterfaces {
    public mut open prop area: Area
}
public open class EventTarget <: EventTargetInterfaces {
    private var area_container: Area
    public mut open prop area: Area
    {
        get() {
            return area_container
        }
        set(area) {
            area_container = area
        }
    }
    init(area: Area) {
        this.area_container = area
    }
}
public interface AreaInterfaces {
    public mut open prop width: Length
    public mut open prop height: Length
    public mut open prop position: Position
    public mut open prop globalPosition: Position
}
public open class Area <: AreaInterfaces {
    private var width_container: Length
    public mut open prop width: Length
    {
        get() {
            return width_container
        }
        set(width) {
            width_container = width
        }
    }
    private var height_container: Length
    public mut open prop height: Length
    {
        get() {
            return height_container
        }
        set(height) {
            height_container = height
        }
    }
    private var position_container: Position
    public mut open prop position: Position
    {
        get() {
            return position_container
        }
        set(position) {
            position_container = position
        }
    }
    private var globalPosition_container: Position
    public mut open prop globalPosition: Position
    {
        get() {
            return globalPosition_container
        }
        set(globalPosition) {
            globalPosition_container = globalPosition
        }
    }
    init(width: Length, height: Length, position: Position, globalPosition: Position) {
        this.width_container = width
        this.height_container = height
        this.position_container = position
        this.globalPosition_container = globalPosition
    }
}
public interface PositionInterfaces {
    public mut open prop x: Option<Length>
    public mut open prop y: Option<Length>
}
public open class Position <: PositionInterfaces {
    private var x_container: Option<Length>
    public mut open prop x: Option<Length>
    {
        get() {
            return x_container
        }
        set(x) {
            x_container = x
        }
    }
    private var y_container: Option<Length>
    public mut open prop y: Option<Length>
    {
        get() {
            return y_container
        }
        set(y) {
            y_container = y
        }
    }
    init(x: Option<Length>, y: Option<Length>) {
        this.x_container = x
        this.y_container = y
    }
}
public open class SourceTool {
    public static var UNKNOWN: SourceTool = SourceTool(0)
    public static var FINGER: SourceTool = SourceTool(1)
    public static var PEN: SourceTool = SourceTool(2)
    public static var MOUSE: SourceTool = SourceTool(3)
    public static var TOUCHPAD: SourceTool = SourceTool(4)
    public static var JOYSTICK: SourceTool = SourceTool(5)
    public var value: Int32
    init(arg0: Int32) {
        value = arg0
    }
}
public open class SourceType {
    public static var UNKNOWN: SourceType = SourceType(0)
    public static var MOUSE: SourceType = SourceType(1)
    public static var TOUCH_SCREEN: SourceType = SourceType(2)
    public var value: Int32
    init(arg0: Int32) {
        value = arg0
    }
}
public type GestureRecognizerJudgeBeginCallback = (event: BaseGestureEvent, current: GestureRecognizer, recognizers: ArrayList<GestureRecognizer>) -> GestureJudgeResult
public interface TranslateOptionsInterfaces {
    public mut open prop x: Option<Union_Number_String>
    public mut open prop y: Option<Union_Number_String>
    public mut open prop z: Option<Union_Number_String>
}
public open class TranslateOptions <: TranslateOptionsInterfaces {
    private var x_container: Option<Union_Number_String>
    public mut open prop x: Option<Union_Number_String>
    {
        get() {
            return x_container
        }
        set(x) {
            x_container = x
        }
    }
    private var y_container: Option<Union_Number_String>
    public mut open prop y: Option<Union_Number_String>
    {
        get() {
            return y_container
        }
        set(y) {
            y_container = y
        }
    }
    private var z_container: Option<Union_Number_String>
    public mut open prop z: Option<Union_Number_String>
    {
        get() {
            return z_container
        }
        set(z) {
            z_container = z
        }
    }
    init(x: Option<Union_Number_String>, y: Option<Union_Number_String>, z: Option<Union_Number_String>) {
        this.x_container = x
        this.y_container = y
        this.z_container = z
    }
}
public open class ArkCommonMethodComponent <: ComponentBase & CommonMethodInterfaces {
    public open func getPeer(): ArkCommonMethodPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkCommonMethodPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func stateStyles(value: StateStyles): Unit {
        if (this.checkPriority("stateStyles")) {
            hookStateStyleImpl(this, value);
        }
        return
    }
    public open func backdropBlur(radius: Option<Float64>, options: Option<BlurOptions>): Unit {
        if (this.checkPriority("backdropBlur")) {
            let radius_casted: Option<Float64> = if (let Some(radius) <- radius) {radius} else { throw Exception("Type has to be not None")}
            let options_casted: Option<BlurOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBackdropBlurAttribute(radius_casted, options_casted)
            return
        }
        return
    }
    public open func width(widthValue: Option<Union_Length_LayoutPolicy>): Unit {
        if (this.checkPriority("width")) {
            let widthValue_casted: Option<Union_Length_LayoutPolicy> = if (let Some(widthValue) <- widthValue) {widthValue} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setWidthAttribute(widthValue_casted)
            return
        }
        return
    }
    public open func height(heightValue: Option<Union_Length_LayoutPolicy>): Unit {
        if (this.checkPriority("height")) {
            let heightValue_casted: Option<Union_Length_LayoutPolicy> = if (let Some(heightValue) <- heightValue) {heightValue} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setHeightAttribute(heightValue_casted)
            return
        }
        return
    }
    public open func key(value: String): Unit {
        if (this.checkPriority("key")) {
            let value_casted: String = value
            let thisPeer = this.getPeer()
            thisPeer.setKeyAttribute(value_casted)
            return
        }
        return
    }
    public open func restoreId(value: Float64): Unit {
        if (this.checkPriority("restoreId")) {
            let value_casted: Float64 = value
            let thisPeer = this.getPeer()
            thisPeer.setRestoreIdAttribute(value_casted)
            return
        }
        return
    }
    public open func padding(value: Union_Padding_Dimension): Unit {
        if (this.checkPriority("padding")) {
            let value_casted: Union_Padding_Dimension = value
            let thisPeer = this.getPeer()
            thisPeer.setPaddingAttribute(value_casted)
            return
        }
        return
    }
    public open func background(builder: CustomBuilder, options: Option<Literal_Alignment_align>): Unit {
        if (this.checkPriority("background")) {
            let builder_casted: CustomBuilder = builder
            let options_casted: Option<Literal_Alignment_align> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBackgroundAttribute(builder_casted, options_casted)
            return
        }
        return
    }
    public open func bindSheet(isShow: Option<Bool>, builder: CustomBuilder, options: Option<SheetOptions>): Unit {
        if (this.checkPriority("bindSheet")) {
            let isShow_casted: Option<Bool> = if (let Some(isShow) <- isShow) {isShow} else { throw Exception("Type has to be not None")}
            let builder_casted: CustomBuilder = builder
            let options_casted: Option<SheetOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBindSheetAttribute(isShow_casted, builder_casted, options_casted)
            return
        }
        return
    }
    public open func backgroundBlurStyle(style: Option<BlurStyle>, options: Option<BackgroundBlurStyleOptions>): Unit {
        if (this.checkPriority("backgroundBlurStyle")) {
            let style_casted: Option<BlurStyle> = if (let Some(style) <- style) {style} else { throw Exception("Type has to be not None")}
            let options_casted: Option<BackgroundBlurStyleOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBackgroundBlurStyleAttribute(style_casted, options_casted)
            return
        }
        return
    }
    public open func dragPreviewOptions(value: DragPreviewOptions, options: Option<DragInteractionOptions>): Unit {
        if (this.checkPriority("dragPreviewOptions")) {
            let value_casted: DragPreviewOptions = value
            let options_casted: Option<DragInteractionOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setDragPreviewOptionsAttribute(value_casted, options_casted)
            return
        }
        return
    }
    public open func linearGradient(options: Option<LinearGradientOptions>): Unit {
        if (this.checkPriority("linearGradient")) {
            let options_casted: Option<LinearGradientOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setLinearGradientAttribute(options_casted)
            return
        }
        return
    }
    public open func border(value: Option<BorderOptions>): Unit {
        if (this.checkPriority("border")) {
            let value_casted: Option<BorderOptions> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBorderAttribute(value_casted)
            return
        }
        return
    }
    public open func size(value: Option<SizeOptions>): Unit {
        if (this.checkPriority("size")) {
            let value_casted: Option<SizeOptions> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setSizeAttribute(value_casted)
            return
        }
        return
    }
    public open func transform(value: Option<Any>): Unit {
        if (this.checkPriority("transform")) {
            let value_casted: Option<Any> = if (let Some(value) <- value) {value} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setTransformAttribute(value_casted)
            return
        }
        return
    }
    public open func onChildTouchTest(event: ((value: ArrayList<TouchTestInfo>) -> String)): Unit {
        if (this.checkPriority("onChildTouchTest")) {
            let event_casted: ((value: ArrayList<TouchTestInfo>) -> String) = event
            let thisPeer = this.getPeer()
            thisPeer.setOnChildTouchTestAttribute(event_casted)
            return
        }
        return
    }
    public open func gestureModifier(modifier: GestureModifier): Unit {
        if (this.checkPriority("gestureModifier")) {
            hookGestureModifier(this, modifier);
        }
        return
    }
    public open func onGestureRecognizerJudgeBegin(callback_: GestureRecognizerJudgeBeginCallback): Unit {
        if (this.checkPriority("onGestureRecognizerJudgeBegin")) {
            let callback__casted: GestureRecognizerJudgeBeginCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnGestureRecognizerJudgeBeginAttribute(callback__casted)
            return
        }
        return
    }
    public open func onClick(event: Callback_ClickEvent_Void, distanceThreshold: Float64): Unit {
        if (this.checkPriority("onClick")) {
            let event_casted: Callback_ClickEvent_Void = event
            let distanceThreshold_casted: Float64 = distanceThreshold
            let thisPeer = this.getPeer()
            thisPeer.setOnClickAttribute(event_casted, distanceThreshold_casted)
            return
        }
        return
    }
    public open func backgroundColor(value: ResourceColor): Unit {
        if (this.checkPriority("backgroundColor")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setBackgroundColorAttribute(value_casted)
            return
        }
        return
    }
    public func attributeModifier(modifier: AttributeModifier<Object>) { throw Exception("not implemented") }
    public open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it public
        super.applyAttributesFinish()
    }
}
public open class ArkCommonComponent <: ArkCommonMethodComponent & CommonAttributeInterfaces {
    public open func getPeer(): ArkCommonPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkCommonPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setCommonOptions(): Unit {
        if (this.checkPriority("setCommonOptions")) {
            let thisPeer = this.getPeer()
            thisPeer.setCommonOptionsAttribute()
            return
        }
        return
    }
    public open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it public
        super.applyAttributesFinish()
    }
}
class CommonAttributeStyleHolder {
    var value: ?((attributes: CommonAttributeInterfaces) -> Unit)
    init (value: ?((attributes: CommonAttributeInterfaces) -> Unit)) {
        this.value = value
    }
}

class CommonAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo
public func ArkCommon(
    style: ?((attributes: CommonAttributeInterfaces) -> Unit),
    content_: ?(() -> Unit)
): Unit {
    let styleHolder = CommonAttributeStyleHolder(style)
    let contentHolder = CommonAttributeContentHolder(content_)
    let receiver = remember({ => ArkCommonComponent() })
    NodeAttach<ArkCommonPeer>({ => 
        ArkCommonPeer.create(receiver, 0) 
    }) {
        receiver.setCommonOptions()
        if (let Some(style) <- styleHolder.value) {
            style(receiver)
        }
        if (let Some(content_) <- contentHolder.value) {
            content_()
        }
    }
}

public open class ArkCommonShapeMethodComponent <: ArkCommonMethodComponent & CommonShapeMethodInterfaces {
    public open func getPeer(): ArkCommonShapeMethodPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkCommonShapeMethodPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func stroke(value: ResourceColor): Unit {
        if (this.checkPriority("stroke")) {
            let value_casted: ResourceColor = value
            let thisPeer = this.getPeer()
            thisPeer.setStrokeAttribute(value_casted)
            return
        }
        return
    }
    public open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it public
        super.applyAttributesFinish()
    }
}
public open class ArkScrollableCommonMethodComponent <: ArkCommonMethodComponent & ScrollableCommonMethodInterfaces {
    public open func getPeer(): ArkScrollableCommonMethodPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkScrollableCommonMethodPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func scrollBarWidth(value: Union_Number_String): Unit {
        if (this.checkPriority("scrollBarWidth")) {
            let value_casted: Union_Number_String = value
            let thisPeer = this.getPeer()
            thisPeer.setScrollBarWidthAttribute(value_casted)
            return
        }
        return
    }
    public open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it public
        super.applyAttributesFinish()
    }
}
public func toIncludeDouble(value: Option<Float64>): Unit {
    GlobalScope.toIncludeDouble(value);
}
public open class BorderOptions_serializer {
    public static func write(buffer: SerializerBase, value: BorderOptions): Unit {
    }
    public static func read(buffer: DeserializerBase): BorderOptions {
        var value: BorderOptions = BorderOptions()
        return value
    }
}
public open class ICurve_serializer {
    public static func write(buffer: SerializerBase, value: ICurve): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): ICurve {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return ICurveInternal.fromPtr(ptr)
    }
}
public open class LayoutPolicy_serializer {
    public static func write(buffer: SerializerBase, value: LayoutPolicy): Unit {
    }
    public static func read(buffer: DeserializerBase): LayoutPolicy {
        var value: LayoutPolicy = LayoutPolicy()
        return value
    }
}
public open class Measurable_serializer {
    public static func write(buffer: SerializerBase, value: Measurable): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): Measurable {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return MeasurableInternal.fromPtr(ptr)
    }
}
public open class RectResult_serializer {
    public static func write(buffer: SerializerBase, value: RectResult): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForX = value.x
        valueSerializer.writeNumber(valueHolderForX);
        let valueHolderForY = value.y
        valueSerializer.writeNumber(valueHolderForY);
        let valueHolderForWidth = value.width
        valueSerializer.writeNumber(valueHolderForWidth);
        let valueHolderForHeight = value.height
        valueSerializer.writeNumber(valueHolderForHeight);
    }
    public static func read(buffer: DeserializerBase): RectResult {
        var valueDeserializer: DeserializerBase = buffer
        let xTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let yTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let widthTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let heightTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: RectResult = RectResult(xTmpResult, yTmpResult, widthTmpResult, heightTmpResult)
        return value
    }
}
public open class SizeResult_serializer {
    public static func write(buffer: SerializerBase, value: SizeResult): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForWidth = value.width
        valueSerializer.writeNumber(valueHolderForWidth);
        let valueHolderForHeight = value.height
        valueSerializer.writeNumber(valueHolderForHeight);
    }
    public static func read(buffer: DeserializerBase): SizeResult {
        var valueDeserializer: DeserializerBase = buffer
        let widthTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let heightTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: SizeResult = SizeResult(widthTmpResult, heightTmpResult)
        return value
    }
}
public open class TouchTestInfo_serializer {
    public static func write(buffer: SerializerBase, value: TouchTestInfo): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForWindowX = value.windowX
        valueSerializer.writeNumber(valueHolderForWindowX);
        let valueHolderForWindowY = value.windowY
        valueSerializer.writeNumber(valueHolderForWindowY);
        let valueHolderForParentX = value.parentX
        valueSerializer.writeNumber(valueHolderForParentX);
        let valueHolderForParentY = value.parentY
        valueSerializer.writeNumber(valueHolderForParentY);
        let valueHolderForX = value.x
        valueSerializer.writeNumber(valueHolderForX);
        let valueHolderForY = value.y
        valueSerializer.writeNumber(valueHolderForY);
        let valueHolderForRect = value.rect
        RectResult_serializer.write(valueSerializer, valueHolderForRect);
        let valueHolderForId = value.id
        valueSerializer.writeString(valueHolderForId);
    }
    public static func read(buffer: DeserializerBase): TouchTestInfo {
        var valueDeserializer: DeserializerBase = buffer
        let windowXTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let windowYTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let parentXTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let parentYTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let xTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let yTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let rectTmpResult: RectResult = RectResult_serializer.read(valueDeserializer)
        let idTmpResult: String = match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: TouchTestInfo = TouchTestInfo(windowXTmpResult, windowYTmpResult, parentXTmpResult, parentYTmpResult, xTmpResult, yTmpResult, rectTmpResult, idTmpResult)
        return value
    }
}
public open class UICommonEvent_serializer {
    public static func write(buffer: SerializerBase, value: UICommonEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): UICommonEvent {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return UICommonEventInternal.fromPtr(ptr)
    }
}
public open class BaseEvent_serializer {
    public static func write(buffer: SerializerBase, value: BaseEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): BaseEvent {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return BaseEventInternal.fromPtr(ptr)
    }
}
public open class BlurOptions_serializer {
    public static func write(buffer: SerializerBase, value: BlurOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForGrayscale = value.grayscale
        let valueHolderForGrayscale_0 = valueHolderForGrayscale.value0
        valueSerializer.writeNumber(valueHolderForGrayscale_0);
        let valueHolderForGrayscale_1 = valueHolderForGrayscale.value1
        valueSerializer.writeNumber(valueHolderForGrayscale_1);
    }
    public static func read(buffer: DeserializerBase): BlurOptions {
        var valueDeserializer: DeserializerBase = buffer
        let grayscaleTmpBufValue0: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let grayscaleTmpBufValue1: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let grayscaleTmpResult: Tuple_Number_Number = Tuple_Number_Number(grayscaleTmpBufValue0, grayscaleTmpBufValue1)
        var value: BlurOptions = BlurOptions(grayscaleTmpResult)
        return value
    }
}
public open class ClickEvent_serializer {
    public static func write(buffer: SerializerBase, value: ClickEvent): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): ClickEvent {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return ClickEventInternal.fromPtr(ptr)
    }
}
public open class DateRange_serializer {
    public static func write(buffer: SerializerBase, value: DateRange): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForStart = value.start
        if (let Some(valueHolderForStart) <- valueHolderForStart) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStartTmpValue = valueHolderForStart
            valueSerializer.writeInt64(match (valueHolderForStartTmpValue as Int64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")});
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEnd = value.end
        if (let Some(valueHolderForEnd) <- valueHolderForEnd) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEndTmpValue = valueHolderForEnd
            valueSerializer.writeInt64(match (valueHolderForEndTmpValue as Int64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")});
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): DateRange {
        var valueDeserializer: DeserializerBase = buffer
        let startTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var startTmpBuf: Option<DateTime> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(startTmpBuf_runtimeType))) {
            startTmpBuf = DateTime.now()
        }
        let startTmpResult: Option<DateTime> = startTmpBuf
        let endTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var endTmpBuf: Option<DateTime> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(endTmpBuf_runtimeType))) {
            endTmpBuf = DateTime.now()
        }
        let endTmpResult: Option<DateTime> = endTmpBuf
        var value: DateRange = DateRange(startTmpResult, endTmpResult)
        return value
    }
}
public open class DismissSheetAction_serializer {
    public static func write(buffer: SerializerBase, value: DismissSheetAction): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForDismiss = value.dismiss
        valueSerializer.holdAndWriteCallback(valueHolderForDismiss);
        let valueHolderForReason = value.reason
        valueSerializer.writeInt32(valueHolderForReason.value);
    }
    public static func read(buffer: DeserializerBase): DismissSheetAction {
        var valueDeserializer: DeserializerBase = buffer
        let dismissTmpBufBufResource: CallbackResource = valueDeserializer.readCallbackResource()
        let dismissTmpBufBufCall: UInt64 = valueDeserializer.readPointer()
        let dismissTmpBufBufCallSync: UInt64 = valueDeserializer.readPointer()
        let dismissTmpResult: Callback_Void_Void = { => let dismissTmpBufBufArgsSerializer: SerializerBase = SerializerBase.hold();
dismissTmpBufBufArgsSerializer.writeInt32(dismissTmpBufBufResource.resourceId);
dismissTmpBufBufArgsSerializer.writePointer(dismissTmpBufBufCall);
dismissTmpBufBufArgsSerializer.writePointer(dismissTmpBufBufCallSync);
InteropNativeModule._CallCallbackSync(10, -912797893, dismissTmpBufBufArgsSerializer.asBuffer(), dismissTmpBufBufArgsSerializer.length());
dismissTmpBufBufArgsSerializer.release();
return; }
        let reasonTmpResult: DismissReason = DismissReason(valueDeserializer.readInt32())
        var value: DismissSheetAction = DismissSheetAction(dismissTmpResult, reasonTmpResult)
        return value
    }
}
public open class DragInteractionOptions_serializer {
    public static func write(buffer: SerializerBase, value: DragInteractionOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForIsMultiSelectionEnabled = value.isMultiSelectionEnabled
        if (let Some(valueHolderForIsMultiSelectionEnabled) <- valueHolderForIsMultiSelectionEnabled) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIsMultiSelectionEnabledTmpValue = valueHolderForIsMultiSelectionEnabled
            valueSerializer.writeBoolean(valueHolderForIsMultiSelectionEnabledTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDefaultAnimationBeforeLifting = value.defaultAnimationBeforeLifting
        if (let Some(valueHolderForDefaultAnimationBeforeLifting) <- valueHolderForDefaultAnimationBeforeLifting) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDefaultAnimationBeforeLiftingTmpValue = valueHolderForDefaultAnimationBeforeLifting
            valueSerializer.writeBoolean(valueHolderForDefaultAnimationBeforeLiftingTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEnableEdgeAutoScroll = value.enableEdgeAutoScroll
        if (let Some(valueHolderForEnableEdgeAutoScroll) <- valueHolderForEnableEdgeAutoScroll) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEnableEdgeAutoScrollTmpValue = valueHolderForEnableEdgeAutoScroll
            valueSerializer.writeBoolean(valueHolderForEnableEdgeAutoScrollTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEnableHapticFeedback = value.enableHapticFeedback
        if (let Some(valueHolderForEnableHapticFeedback) <- valueHolderForEnableHapticFeedback) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEnableHapticFeedbackTmpValue = valueHolderForEnableHapticFeedback
            valueSerializer.writeBoolean(valueHolderForEnableHapticFeedbackTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForIsLiftingDisabled = value.isLiftingDisabled
        if (let Some(valueHolderForIsLiftingDisabled) <- valueHolderForIsLiftingDisabled) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForIsLiftingDisabledTmpValue = valueHolderForIsLiftingDisabled
            valueSerializer.writeBoolean(valueHolderForIsLiftingDisabledTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): DragInteractionOptions {
        var valueDeserializer: DeserializerBase = buffer
        let isMultiSelectionEnabledTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var isMultiSelectionEnabledTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(isMultiSelectionEnabledTmpBuf_runtimeType))) {
            isMultiSelectionEnabledTmpBuf = valueDeserializer.readBoolean()
        }
        let isMultiSelectionEnabledTmpResult: Option<Bool> = isMultiSelectionEnabledTmpBuf
        let defaultAnimationBeforeLiftingTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var defaultAnimationBeforeLiftingTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(defaultAnimationBeforeLiftingTmpBuf_runtimeType))) {
            defaultAnimationBeforeLiftingTmpBuf = valueDeserializer.readBoolean()
        }
        let defaultAnimationBeforeLiftingTmpResult: Option<Bool> = defaultAnimationBeforeLiftingTmpBuf
        let enableEdgeAutoScrollTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enableEdgeAutoScrollTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enableEdgeAutoScrollTmpBuf_runtimeType))) {
            enableEdgeAutoScrollTmpBuf = valueDeserializer.readBoolean()
        }
        let enableEdgeAutoScrollTmpResult: Option<Bool> = enableEdgeAutoScrollTmpBuf
        let enableHapticFeedbackTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enableHapticFeedbackTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enableHapticFeedbackTmpBuf_runtimeType))) {
            enableHapticFeedbackTmpBuf = valueDeserializer.readBoolean()
        }
        let enableHapticFeedbackTmpResult: Option<Bool> = enableHapticFeedbackTmpBuf
        let isLiftingDisabledTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var isLiftingDisabledTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(isLiftingDisabledTmpBuf_runtimeType))) {
            isLiftingDisabledTmpBuf = valueDeserializer.readBoolean()
        }
        let isLiftingDisabledTmpResult: Option<Bool> = isLiftingDisabledTmpBuf
        var value: DragInteractionOptions = DragInteractionOptions(isMultiSelectionEnabledTmpResult, defaultAnimationBeforeLiftingTmpResult, enableEdgeAutoScrollTmpResult, enableHapticFeedbackTmpResult, isLiftingDisabledTmpResult)
        return value
    }
}
public open class DrawModifier_serializer {
    public static func write(buffer: SerializerBase, value: DrawModifier): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): DrawModifier {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return DrawModifierInternal.fromPtr(ptr)
    }
}
public open class LinearGradientOptions_serializer {
    public static func write(buffer: SerializerBase, value: LinearGradientOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForAngle = value.angle
        if (let Some(valueHolderForAngle) <- valueHolderForAngle) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAngleTmpValue = valueHolderForAngle
            if (valueHolderForAngleTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForAngleTmpValueForIdx0 = valueHolderForAngleTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForAngleTmpValueForIdx0);
            } else if (valueHolderForAngleTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForAngleTmpValueForIdx1 = valueHolderForAngleTmpValue.getValue1()
                valueSerializer.writeString(valueHolderForAngleTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDirection = value.direction
        if (let Some(valueHolderForDirection) <- valueHolderForDirection) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDirectionTmpValue = valueHolderForDirection
            valueSerializer.writeInt32(valueHolderForDirectionTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForColors = value.colors
        valueSerializer.writeInt32(Int32(valueHolderForColors.size));
        for (valueHolderForColorsCounterI in 0..valueHolderForColors.size) {
            let valueHolderForColorsTmpElement: Tuple_ResourceColor_Number = valueHolderForColors[Int64(valueHolderForColorsCounterI)]
            let valueHolderForColorsTmpElement_0 = valueHolderForColorsTmpElement.value0
            if (valueHolderForColorsTmpElement_0.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForColorsTmpElement_0ForIdx0 = valueHolderForColorsTmpElement_0.getValue0()
                valueSerializer.writeInt32(valueHolderForColorsTmpElement_0ForIdx0.value);
            } else if (valueHolderForColorsTmpElement_0.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForColorsTmpElement_0ForIdx1 = valueHolderForColorsTmpElement_0.getValue1()
                valueSerializer.writeNumber(valueHolderForColorsTmpElement_0ForIdx1);
            } else if (valueHolderForColorsTmpElement_0.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForColorsTmpElement_0ForIdx2 = valueHolderForColorsTmpElement_0.getValue2()
                valueSerializer.writeString(valueHolderForColorsTmpElement_0ForIdx2);
            } else if (valueHolderForColorsTmpElement_0.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForColorsTmpElement_0ForIdx3 = valueHolderForColorsTmpElement_0.getValue3()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForColorsTmpElement_0ForIdx3);
            }
            let valueHolderForColorsTmpElement_1 = valueHolderForColorsTmpElement.value1
            valueSerializer.writeNumber(valueHolderForColorsTmpElement_1);
        }
        let valueHolderForRepeating = value.repeating
        if (let Some(valueHolderForRepeating) <- valueHolderForRepeating) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForRepeatingTmpValue = valueHolderForRepeating
            valueSerializer.writeBoolean(valueHolderForRepeatingTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): LinearGradientOptions {
        var valueDeserializer: DeserializerBase = buffer
        let angleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var angleTmpBuf: Option<Union_Number_String> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(angleTmpBuf_runtimeType))) {
            let angleTmpBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var angleTmpBufOpt: Union_Number_String 
            if (angleTmpBufOptUnionSelector == Int8(0)) {
                angleTmpBufOpt = Union_Number_String(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (angleTmpBufOptUnionSelector == Int8(1)) {
                angleTmpBufOpt = Union_Number_String(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for angleTmpBufOpt has to be chosen through deserialisation.")
            }
            angleTmpBuf = match (angleTmpBufOpt as Union_Number_String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let angleTmpResult: Option<Union_Number_String> = angleTmpBuf
        let directionTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var directionTmpBuf: Option<GradientDirection> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(directionTmpBuf_runtimeType))) {
            directionTmpBuf = GradientDirection(valueDeserializer.readInt32())
        }
        let directionTmpResult: Option<GradientDirection> = directionTmpBuf
        let colorsTmpBufLength: Int32 = valueDeserializer.readInt32()
        var colorsTmpBuf: ArrayList<Tuple_ResourceColor_Number> = ArrayList<Tuple_ResourceColor_Number>(Int64(colorsTmpBufLength))
        colorsTmpBuf = ArrayList<Tuple_ResourceColor_Number>(Int64(colorsTmpBufLength))
        for (colorsTmpBufBufCounterI in 0..colorsTmpBufLength) {
            let colorsTmpBufTempBufValue0TempBufUnionSelector: Int8 = valueDeserializer.readInt8()
            var colorsTmpBufTempBufValue0TempBuf: Union_Color_Number_String_Resource 
            if (colorsTmpBufTempBufValue0TempBufUnionSelector == Int8(0)) {
                colorsTmpBufTempBufValue0TempBuf = Union_Color_Number_String_Resource(Color(valueDeserializer.readInt32()))
            } else if (colorsTmpBufTempBufValue0TempBufUnionSelector == Int8(1)) {
                colorsTmpBufTempBufValue0TempBuf = Union_Color_Number_String_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (colorsTmpBufTempBufValue0TempBufUnionSelector == Int8(2)) {
                colorsTmpBufTempBufValue0TempBuf = Union_Color_Number_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (colorsTmpBufTempBufValue0TempBufUnionSelector == Int8(3)) {
                colorsTmpBufTempBufValue0TempBuf = Union_Color_Number_String_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for colorsTmpBufTempBufValue0TempBuf has to be chosen through deserialisation.")
            }
            let colorsTmpBufTempBufValue0: ResourceColor = match (colorsTmpBufTempBufValue0TempBuf as Union_Color_Number_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let colorsTmpBufTempBufValue1: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            colorsTmpBuf[Int64(colorsTmpBufBufCounterI)] = Tuple_ResourceColor_Number(colorsTmpBufTempBufValue0, colorsTmpBufTempBufValue1)
        }
        let colorsTmpResult: ArrayList<Tuple_ResourceColor_Number> = colorsTmpBuf
        let repeatingTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var repeatingTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(repeatingTmpBuf_runtimeType))) {
            repeatingTmpBuf = valueDeserializer.readBoolean()
        }
        let repeatingTmpResult: Option<Bool> = repeatingTmpBuf
        var value: LinearGradientOptions = LinearGradientOptions(angleTmpResult, directionTmpResult, colorsTmpResult, repeatingTmpResult)
        return value
    }
}
public open class LocalizedEdgeWidths_serializer {
    public static func write(buffer: SerializerBase, value: LocalizedEdgeWidths): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForTop = value.top
        if (let Some(valueHolderForTop) <- valueHolderForTop) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTopTmpValue = valueHolderForTop
            arkui_Graphics_LengthMetrics_serializer.write(valueSerializer, valueHolderForTopTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEnd = value.end
        if (let Some(valueHolderForEnd) <- valueHolderForEnd) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEndTmpValue = valueHolderForEnd
            arkui_Graphics_LengthMetrics_serializer.write(valueSerializer, valueHolderForEndTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBottom = value.bottom
        if (let Some(valueHolderForBottom) <- valueHolderForBottom) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBottomTmpValue = valueHolderForBottom
            arkui_Graphics_LengthMetrics_serializer.write(valueSerializer, valueHolderForBottomTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForStart = value.start
        if (let Some(valueHolderForStart) <- valueHolderForStart) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStartTmpValue = valueHolderForStart
            arkui_Graphics_LengthMetrics_serializer.write(valueSerializer, valueHolderForStartTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): LocalizedEdgeWidths {
        var valueDeserializer: DeserializerBase = buffer
        let topTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var topTmpBuf: Option<LengthMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(topTmpBuf_runtimeType))) {
            topTmpBuf = arkui_Graphics_LengthMetrics_serializer.read(valueDeserializer)
        }
        let topTmpResult: Option<LengthMetrics> = topTmpBuf
        let endTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var endTmpBuf: Option<LengthMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(endTmpBuf_runtimeType))) {
            endTmpBuf = arkui_Graphics_LengthMetrics_serializer.read(valueDeserializer)
        }
        let endTmpResult: Option<LengthMetrics> = endTmpBuf
        let bottomTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var bottomTmpBuf: Option<LengthMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(bottomTmpBuf_runtimeType))) {
            bottomTmpBuf = arkui_Graphics_LengthMetrics_serializer.read(valueDeserializer)
        }
        let bottomTmpResult: Option<LengthMetrics> = bottomTmpBuf
        let startTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var startTmpBuf: Option<LengthMetrics> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(startTmpBuf_runtimeType))) {
            startTmpBuf = arkui_Graphics_LengthMetrics_serializer.read(valueDeserializer)
        }
        let startTmpResult: Option<LengthMetrics> = startTmpBuf
        var value: LocalizedEdgeWidths = LocalizedEdgeWidths(topTmpResult, endTmpResult, bottomTmpResult, startTmpResult)
        return value
    }
}
public open class MeasureResult_serializer {
    public static func write(buffer: SerializerBase, value: MeasureResult): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForWidth = value.width
        valueSerializer.writeNumber(valueHolderForWidth);
        let valueHolderForHeight = value.height
        valueSerializer.writeNumber(valueHolderForHeight);
    }
    public static func read(buffer: DeserializerBase): MeasureResult {
        var valueDeserializer: DeserializerBase = buffer
        let widthTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let heightTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var value: MeasureResult = MeasureResult(widthTmpResult, heightTmpResult)
        return value
    }
}
public open class SheetDismiss_serializer {
    public static func write(buffer: SerializerBase, value: SheetDismiss): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForDismiss = value.dismiss
        valueSerializer.holdAndWriteCallback(valueHolderForDismiss);
    }
    public static func read(buffer: DeserializerBase): SheetDismiss {
        var valueDeserializer: DeserializerBase = buffer
        let dismissTmpBufBufResource: CallbackResource = valueDeserializer.readCallbackResource()
        let dismissTmpBufBufCall: UInt64 = valueDeserializer.readPointer()
        let dismissTmpBufBufCallSync: UInt64 = valueDeserializer.readPointer()
        let dismissTmpResult: (() -> Unit) = { => let dismissTmpBufBufArgsSerializer: SerializerBase = SerializerBase.hold();
dismissTmpBufBufArgsSerializer.writeInt32(dismissTmpBufBufResource.resourceId);
dismissTmpBufBufArgsSerializer.writePointer(dismissTmpBufBufCall);
dismissTmpBufBufArgsSerializer.writePointer(dismissTmpBufBufCallSync);
InteropNativeModule._CallCallbackSync(10, 1743390416, dismissTmpBufBufArgsSerializer.asBuffer(), dismissTmpBufBufArgsSerializer.length());
dismissTmpBufBufArgsSerializer.release();
return; }
        var value: SheetDismiss = SheetDismiss(dismissTmpResult)
        return value
    }
}
public open class SpringBackAction_serializer {
    public static func write(buffer: SerializerBase, value: SpringBackAction): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForSpringBack = value.springBack
        valueSerializer.holdAndWriteCallback(valueHolderForSpringBack);
    }
    public static func read(buffer: DeserializerBase): SpringBackAction {
        var valueDeserializer: DeserializerBase = buffer
        let springBackTmpBufBufResource: CallbackResource = valueDeserializer.readCallbackResource()
        let springBackTmpBufBufCall: UInt64 = valueDeserializer.readPointer()
        let springBackTmpBufBufCallSync: UInt64 = valueDeserializer.readPointer()
        let springBackTmpResult: Callback_Void_Void = { => let springBackTmpBufBufArgsSerializer: SerializerBase = SerializerBase.hold();
springBackTmpBufBufArgsSerializer.writeInt32(springBackTmpBufBufResource.resourceId);
springBackTmpBufBufArgsSerializer.writePointer(springBackTmpBufBufCall);
springBackTmpBufBufArgsSerializer.writePointer(springBackTmpBufBufCallSync);
InteropNativeModule._CallCallbackSync(10, -912797893, springBackTmpBufBufArgsSerializer.asBuffer(), springBackTmpBufBufArgsSerializer.length());
springBackTmpBufBufArgsSerializer.release();
return; }
        var value: SpringBackAction = SpringBackAction(springBackTmpResult)
        return value
    }
}
public open class BackgroundBlurStyleOptions_serializer {
    public static func write(buffer: SerializerBase, value: BackgroundBlurStyleOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForColorMode = value.colorMode
        if (let Some(valueHolderForColorMode) <- valueHolderForColorMode) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForColorModeTmpValue = valueHolderForColorMode
            valueSerializer.writeInt32(valueHolderForColorModeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForAdaptiveColor = value.adaptiveColor
        if (let Some(valueHolderForAdaptiveColor) <- valueHolderForAdaptiveColor) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForAdaptiveColorTmpValue = valueHolderForAdaptiveColor
            valueSerializer.writeInt32(valueHolderForAdaptiveColorTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForScale = value.scale
        if (let Some(valueHolderForScale) <- valueHolderForScale) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForScaleTmpValue = valueHolderForScale
            valueSerializer.writeNumber(valueHolderForScaleTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBlurOptions = value.blurOptions
        if (let Some(valueHolderForBlurOptions) <- valueHolderForBlurOptions) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBlurOptionsTmpValue = valueHolderForBlurOptions
            BlurOptions_serializer.write(valueSerializer, valueHolderForBlurOptionsTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForPolicy = value.policy
        if (let Some(valueHolderForPolicy) <- valueHolderForPolicy) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPolicyTmpValue = valueHolderForPolicy
            valueSerializer.writeInt32(valueHolderForPolicyTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForInactiveColor = value.inactiveColor
        if (let Some(valueHolderForInactiveColor) <- valueHolderForInactiveColor) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForInactiveColorTmpValue = valueHolderForInactiveColor
            if (valueHolderForInactiveColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForInactiveColorTmpValueForIdx0 = valueHolderForInactiveColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForInactiveColorTmpValueForIdx0.value);
            } else if (valueHolderForInactiveColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForInactiveColorTmpValueForIdx1 = valueHolderForInactiveColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForInactiveColorTmpValueForIdx1);
            } else if (valueHolderForInactiveColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForInactiveColorTmpValueForIdx2 = valueHolderForInactiveColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForInactiveColorTmpValueForIdx2);
            } else if (valueHolderForInactiveColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForInactiveColorTmpValueForIdx3 = valueHolderForInactiveColorTmpValue.getValue3()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForInactiveColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): BackgroundBlurStyleOptions {
        var valueDeserializer: DeserializerBase = buffer
        let colorModeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var colorModeTmpBuf: Option<ThemeColorMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(colorModeTmpBuf_runtimeType))) {
            colorModeTmpBuf = ThemeColorMode(valueDeserializer.readInt32())
        }
        let colorModeTmpResult: Option<ThemeColorMode> = colorModeTmpBuf
        let adaptiveColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var adaptiveColorTmpBuf: Option<AdaptiveColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(adaptiveColorTmpBuf_runtimeType))) {
            adaptiveColorTmpBuf = AdaptiveColor(valueDeserializer.readInt32())
        }
        let adaptiveColorTmpResult: Option<AdaptiveColor> = adaptiveColorTmpBuf
        let scaleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var scaleTmpBuf: Option<Float64> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(scaleTmpBuf_runtimeType))) {
            scaleTmpBuf = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let scaleTmpResult: Option<Float64> = scaleTmpBuf
        let blurOptionsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var blurOptionsTmpBuf: Option<BlurOptions> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(blurOptionsTmpBuf_runtimeType))) {
            blurOptionsTmpBuf = BlurOptions_serializer.read(valueDeserializer)
        }
        let blurOptionsTmpResult: Option<BlurOptions> = blurOptionsTmpBuf
        let policyTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var policyTmpBuf: Option<BlurStyleActivePolicy> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(policyTmpBuf_runtimeType))) {
            policyTmpBuf = BlurStyleActivePolicy(valueDeserializer.readInt32())
        }
        let policyTmpResult: Option<BlurStyleActivePolicy> = policyTmpBuf
        let inactiveColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var inactiveColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(inactiveColorTmpBuf_runtimeType))) {
            let inactiveColorTmpBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var inactiveColorTmpBufOpt: Union_Color_Number_String_Resource 
            if (inactiveColorTmpBufOptUnionSelector == Int8(0)) {
                inactiveColorTmpBufOpt = Union_Color_Number_String_Resource(Color(valueDeserializer.readInt32()))
            } else if (inactiveColorTmpBufOptUnionSelector == Int8(1)) {
                inactiveColorTmpBufOpt = Union_Color_Number_String_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (inactiveColorTmpBufOptUnionSelector == Int8(2)) {
                inactiveColorTmpBufOpt = Union_Color_Number_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (inactiveColorTmpBufOptUnionSelector == Int8(3)) {
                inactiveColorTmpBufOpt = Union_Color_Number_String_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for inactiveColorTmpBufOpt has to be chosen through deserialisation.")
            }
            inactiveColorTmpBuf = match (inactiveColorTmpBufOpt as Union_Color_Number_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let inactiveColorTmpResult: Option<ResourceColor> = inactiveColorTmpBuf
        var value: BackgroundBlurStyleOptions = BackgroundBlurStyleOptions(policyTmpResult, inactiveColorTmpResult, colorModeTmpResult, adaptiveColorTmpResult, scaleTmpResult, blurOptionsTmpResult)
        return value
    }
}
public open class DragPreviewOptions_serializer {
    public static func write(buffer: SerializerBase, value: DragPreviewOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForMode = value.mode
        if (let Some(valueHolderForMode) <- valueHolderForMode) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForModeTmpValue = valueHolderForMode
            if (valueHolderForModeTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForModeTmpValueForIdx0 = valueHolderForModeTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForModeTmpValueForIdx0.value);
            } else if (valueHolderForModeTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForModeTmpValueForIdx1 = valueHolderForModeTmpValue.getValue1()
                valueSerializer.writeInt32(Int32(valueHolderForModeTmpValueForIdx1.size));
                for (valueHolderForModeTmpValueForIdx1CounterI in 0..valueHolderForModeTmpValueForIdx1.size) {
                    let valueHolderForModeTmpValueForIdx1TmpElement: DragPreviewMode = valueHolderForModeTmpValueForIdx1[Int64(valueHolderForModeTmpValueForIdx1CounterI)]
                    valueSerializer.writeInt32(valueHolderForModeTmpValueForIdx1TmpElement.value);
                }
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForNumberBadge = value.numberBadge
        if (let Some(valueHolderForNumberBadge) <- valueHolderForNumberBadge) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForNumberBadgeTmpValue = valueHolderForNumberBadge
            if (valueHolderForNumberBadgeTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForNumberBadgeTmpValueForIdx0 = valueHolderForNumberBadgeTmpValue.getValue0()
                valueSerializer.writeBoolean(valueHolderForNumberBadgeTmpValueForIdx0);
            } else if (valueHolderForNumberBadgeTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForNumberBadgeTmpValueForIdx1 = valueHolderForNumberBadgeTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForNumberBadgeTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForSizeChangeEffect = value.sizeChangeEffect
        if (let Some(valueHolderForSizeChangeEffect) <- valueHolderForSizeChangeEffect) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSizeChangeEffectTmpValue = valueHolderForSizeChangeEffect
            valueSerializer.writeInt32(valueHolderForSizeChangeEffectTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): DragPreviewOptions {
        var valueDeserializer: DeserializerBase = buffer
        let modeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var modeTmpBuf: Option<Union_DragPreviewMode_Array_DragPreviewMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(modeTmpBuf_runtimeType))) {
            let modeTmpBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var modeTmpBufOpt: Union_DragPreviewMode_Array_DragPreviewMode 
            if (modeTmpBufOptUnionSelector == Int8(0)) {
                modeTmpBufOpt = Union_DragPreviewMode_Array_DragPreviewMode(DragPreviewMode(valueDeserializer.readInt32()))
            } else if (modeTmpBufOptUnionSelector == Int8(1)) {
                let modeTmpBufOptBufULength: Int32 = valueDeserializer.readInt32()
                var modeTmpBufOptBufU: ArrayList<DragPreviewMode> = ArrayList<DragPreviewMode>(Int64(modeTmpBufOptBufULength))
                modeTmpBufOptBufU = ArrayList<DragPreviewMode>(Int64(modeTmpBufOptBufULength))
                for (modeTmpBufOptBufUBufCounterI in 0..modeTmpBufOptBufULength) {
                    modeTmpBufOptBufU[Int64(modeTmpBufOptBufUBufCounterI)] = DragPreviewMode(valueDeserializer.readInt32())
                }
                modeTmpBufOpt = Union_DragPreviewMode_Array_DragPreviewMode(modeTmpBufOptBufU)
            } else {
                throw Exception("One of the branches for modeTmpBufOpt has to be chosen through deserialisation.")
            }
            modeTmpBuf = match (modeTmpBufOpt as Union_DragPreviewMode_Array_DragPreviewMode) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let modeTmpResult: Option<Union_DragPreviewMode_Array_DragPreviewMode> = modeTmpBuf
        let numberBadgeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var numberBadgeTmpBuf: Option<Union_Boolean_Number> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(numberBadgeTmpBuf_runtimeType))) {
            let numberBadgeTmpBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var numberBadgeTmpBufOpt: Union_Boolean_Number 
            if (numberBadgeTmpBufOptUnionSelector == Int8(0)) {
                numberBadgeTmpBufOpt = Union_Boolean_Number(valueDeserializer.readBoolean())
            } else if (numberBadgeTmpBufOptUnionSelector == Int8(1)) {
                numberBadgeTmpBufOpt = Union_Boolean_Number(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for numberBadgeTmpBufOpt has to be chosen through deserialisation.")
            }
            numberBadgeTmpBuf = match (numberBadgeTmpBufOpt as Union_Boolean_Number) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let numberBadgeTmpResult: Option<Union_Boolean_Number> = numberBadgeTmpBuf
        let sizeChangeEffectTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var sizeChangeEffectTmpBuf: Option<DraggingSizeChangeEffect> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(sizeChangeEffectTmpBuf_runtimeType))) {
            sizeChangeEffectTmpBuf = DraggingSizeChangeEffect(valueDeserializer.readInt32())
        }
        let sizeChangeEffectTmpResult: Option<DraggingSizeChangeEffect> = sizeChangeEffectTmpBuf
        var value: DragPreviewOptions = DragPreviewOptions(modeTmpResult, numberBadgeTmpResult, sizeChangeEffectTmpResult)
        return value
    }
}
public open class Layoutable_serializer {
    public static func write(buffer: SerializerBase, value: Layoutable): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): Layoutable {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return LayoutableInternal.fromPtr(ptr)
    }
}
public open class LocalizedEdgeColors_serializer {
    public static func write(buffer: SerializerBase, value: LocalizedEdgeColors): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForTop = value.top
        if (let Some(valueHolderForTop) <- valueHolderForTop) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTopTmpValue = valueHolderForTop
            if (valueHolderForTopTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForTopTmpValueForIdx0 = valueHolderForTopTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForTopTmpValueForIdx0.value);
            } else if (valueHolderForTopTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForTopTmpValueForIdx1 = valueHolderForTopTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForTopTmpValueForIdx1);
            } else if (valueHolderForTopTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForTopTmpValueForIdx2 = valueHolderForTopTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForTopTmpValueForIdx2);
            } else if (valueHolderForTopTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForTopTmpValueForIdx3 = valueHolderForTopTmpValue.getValue3()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForTopTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEnd = value.end
        if (let Some(valueHolderForEnd) <- valueHolderForEnd) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEndTmpValue = valueHolderForEnd
            if (valueHolderForEndTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForEndTmpValueForIdx0 = valueHolderForEndTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForEndTmpValueForIdx0.value);
            } else if (valueHolderForEndTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForEndTmpValueForIdx1 = valueHolderForEndTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForEndTmpValueForIdx1);
            } else if (valueHolderForEndTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForEndTmpValueForIdx2 = valueHolderForEndTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForEndTmpValueForIdx2);
            } else if (valueHolderForEndTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForEndTmpValueForIdx3 = valueHolderForEndTmpValue.getValue3()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForEndTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBottom = value.bottom
        if (let Some(valueHolderForBottom) <- valueHolderForBottom) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBottomTmpValue = valueHolderForBottom
            if (valueHolderForBottomTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBottomTmpValueForIdx0 = valueHolderForBottomTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForBottomTmpValueForIdx0.value);
            } else if (valueHolderForBottomTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBottomTmpValueForIdx1 = valueHolderForBottomTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForBottomTmpValueForIdx1);
            } else if (valueHolderForBottomTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForBottomTmpValueForIdx2 = valueHolderForBottomTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForBottomTmpValueForIdx2);
            } else if (valueHolderForBottomTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForBottomTmpValueForIdx3 = valueHolderForBottomTmpValue.getValue3()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForBottomTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForStart = value.start
        if (let Some(valueHolderForStart) <- valueHolderForStart) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForStartTmpValue = valueHolderForStart
            if (valueHolderForStartTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForStartTmpValueForIdx0 = valueHolderForStartTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForStartTmpValueForIdx0.value);
            } else if (valueHolderForStartTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForStartTmpValueForIdx1 = valueHolderForStartTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForStartTmpValueForIdx1);
            } else if (valueHolderForStartTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForStartTmpValueForIdx2 = valueHolderForStartTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForStartTmpValueForIdx2);
            } else if (valueHolderForStartTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForStartTmpValueForIdx3 = valueHolderForStartTmpValue.getValue3()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForStartTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): LocalizedEdgeColors {
        var valueDeserializer: DeserializerBase = buffer
        let topTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var topTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(topTmpBuf_runtimeType))) {
            let topTmpBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var topTmpBufOpt: Union_Color_Number_String_Resource 
            if (topTmpBufOptUnionSelector == Int8(0)) {
                topTmpBufOpt = Union_Color_Number_String_Resource(Color(valueDeserializer.readInt32()))
            } else if (topTmpBufOptUnionSelector == Int8(1)) {
                topTmpBufOpt = Union_Color_Number_String_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (topTmpBufOptUnionSelector == Int8(2)) {
                topTmpBufOpt = Union_Color_Number_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (topTmpBufOptUnionSelector == Int8(3)) {
                topTmpBufOpt = Union_Color_Number_String_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for topTmpBufOpt has to be chosen through deserialisation.")
            }
            topTmpBuf = match (topTmpBufOpt as Union_Color_Number_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let topTmpResult: Option<ResourceColor> = topTmpBuf
        let endTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var endTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(endTmpBuf_runtimeType))) {
            let endTmpBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var endTmpBufOpt: Union_Color_Number_String_Resource 
            if (endTmpBufOptUnionSelector == Int8(0)) {
                endTmpBufOpt = Union_Color_Number_String_Resource(Color(valueDeserializer.readInt32()))
            } else if (endTmpBufOptUnionSelector == Int8(1)) {
                endTmpBufOpt = Union_Color_Number_String_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (endTmpBufOptUnionSelector == Int8(2)) {
                endTmpBufOpt = Union_Color_Number_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (endTmpBufOptUnionSelector == Int8(3)) {
                endTmpBufOpt = Union_Color_Number_String_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for endTmpBufOpt has to be chosen through deserialisation.")
            }
            endTmpBuf = match (endTmpBufOpt as Union_Color_Number_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let endTmpResult: Option<ResourceColor> = endTmpBuf
        let bottomTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var bottomTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(bottomTmpBuf_runtimeType))) {
            let bottomTmpBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var bottomTmpBufOpt: Union_Color_Number_String_Resource 
            if (bottomTmpBufOptUnionSelector == Int8(0)) {
                bottomTmpBufOpt = Union_Color_Number_String_Resource(Color(valueDeserializer.readInt32()))
            } else if (bottomTmpBufOptUnionSelector == Int8(1)) {
                bottomTmpBufOpt = Union_Color_Number_String_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (bottomTmpBufOptUnionSelector == Int8(2)) {
                bottomTmpBufOpt = Union_Color_Number_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (bottomTmpBufOptUnionSelector == Int8(3)) {
                bottomTmpBufOpt = Union_Color_Number_String_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for bottomTmpBufOpt has to be chosen through deserialisation.")
            }
            bottomTmpBuf = match (bottomTmpBufOpt as Union_Color_Number_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let bottomTmpResult: Option<ResourceColor> = bottomTmpBuf
        let startTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var startTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(startTmpBuf_runtimeType))) {
            let startTmpBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var startTmpBufOpt: Union_Color_Number_String_Resource 
            if (startTmpBufOptUnionSelector == Int8(0)) {
                startTmpBufOpt = Union_Color_Number_String_Resource(Color(valueDeserializer.readInt32()))
            } else if (startTmpBufOptUnionSelector == Int8(1)) {
                startTmpBufOpt = Union_Color_Number_String_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (startTmpBufOptUnionSelector == Int8(2)) {
                startTmpBufOpt = Union_Color_Number_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (startTmpBufOptUnionSelector == Int8(3)) {
                startTmpBufOpt = Union_Color_Number_String_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for startTmpBufOpt has to be chosen through deserialisation.")
            }
            startTmpBuf = match (startTmpBufOpt as Union_Color_Number_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let startTmpResult: Option<ResourceColor> = startTmpBuf
        var value: LocalizedEdgeColors = LocalizedEdgeColors(topTmpResult, endTmpResult, bottomTmpResult, startTmpResult)
        return value
    }
}
public open class ShadowOptions_serializer {
    public static func write(buffer: SerializerBase, value: ShadowOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForRadius = value.radius
        if (valueHolderForRadius.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForRadiusForIdx0 = valueHolderForRadius.getValue0()
            valueSerializer.writeNumber(valueHolderForRadiusForIdx0);
        } else if (valueHolderForRadius.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForRadiusForIdx1 = valueHolderForRadius.getValue1()
            global_resource_Resource_serializer.write(valueSerializer, valueHolderForRadiusForIdx1);
        }
        let valueHolderForType = value.type_
        if (let Some(valueHolderForType) <- valueHolderForType) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTypeTmpValue = valueHolderForType
            valueSerializer.writeInt32(valueHolderForTypeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForColor = value.color
        if (let Some(valueHolderForColor) <- valueHolderForColor) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForColorTmpValue = valueHolderForColor
            if (valueHolderForColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForColorTmpValueForIdx0 = valueHolderForColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForColorTmpValueForIdx0.value);
            } else if (valueHolderForColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForColorTmpValueForIdx1 = valueHolderForColorTmpValue.getValue1()
                valueSerializer.writeString(valueHolderForColorTmpValueForIdx1);
            } else if (valueHolderForColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForColorTmpValueForIdx2 = valueHolderForColorTmpValue.getValue2()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForColorTmpValueForIdx2);
            } else if (valueHolderForColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForColorTmpValueForIdx3 = valueHolderForColorTmpValue.getValue3()
                valueSerializer.writeInt32(valueHolderForColorTmpValueForIdx3.value);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOffsetX = value.offsetX
        if (let Some(valueHolderForOffsetX) <- valueHolderForOffsetX) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOffsetXTmpValue = valueHolderForOffsetX
            if (valueHolderForOffsetXTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForOffsetXTmpValueForIdx0 = valueHolderForOffsetXTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForOffsetXTmpValueForIdx0);
            } else if (valueHolderForOffsetXTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForOffsetXTmpValueForIdx1 = valueHolderForOffsetXTmpValue.getValue1()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForOffsetXTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOffsetY = value.offsetY
        if (let Some(valueHolderForOffsetY) <- valueHolderForOffsetY) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOffsetYTmpValue = valueHolderForOffsetY
            if (valueHolderForOffsetYTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForOffsetYTmpValueForIdx0 = valueHolderForOffsetYTmpValue.getValue0()
                valueSerializer.writeNumber(valueHolderForOffsetYTmpValueForIdx0);
            } else if (valueHolderForOffsetYTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForOffsetYTmpValueForIdx1 = valueHolderForOffsetYTmpValue.getValue1()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForOffsetYTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForFill = value.fill
        if (let Some(valueHolderForFill) <- valueHolderForFill) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForFillTmpValue = valueHolderForFill
            valueSerializer.writeBoolean(valueHolderForFillTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): ShadowOptions {
        var valueDeserializer: DeserializerBase = buffer
        let radiusTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var radiusTmpBuf: Union_Number_Resource 
        if (radiusTmpBufUnionSelector == Int8(0)) {
            radiusTmpBuf = Union_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (radiusTmpBufUnionSelector == Int8(1)) {
            radiusTmpBuf = Union_Number_Resource(global_resource_Resource_serializer.read(valueDeserializer))
        } else {
            throw Exception("One of the branches for radiusTmpBuf has to be chosen through deserialisation.")
        }
        let radiusTmpResult: Union_Number_Resource = match (radiusTmpBuf as Union_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let typeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var typeTmpBuf: Option<ShadowType> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(typeTmpBuf_runtimeType))) {
            typeTmpBuf = ShadowType(valueDeserializer.readInt32())
        }
        let typeTmpResult: Option<ShadowType> = typeTmpBuf
        let colorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var colorTmpBuf: Option<Union_Color_String_Resource_ColoringStrategy> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(colorTmpBuf_runtimeType))) {
            let colorTmpBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var colorTmpBufOpt: Union_Color_String_Resource_ColoringStrategy 
            if (colorTmpBufOptUnionSelector == Int8(0)) {
                colorTmpBufOpt = Union_Color_String_Resource_ColoringStrategy(Color(valueDeserializer.readInt32()))
            } else if (colorTmpBufOptUnionSelector == Int8(1)) {
                colorTmpBufOpt = Union_Color_String_Resource_ColoringStrategy(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (colorTmpBufOptUnionSelector == Int8(2)) {
                colorTmpBufOpt = Union_Color_String_Resource_ColoringStrategy(global_resource_Resource_serializer.read(valueDeserializer))
            } else if (colorTmpBufOptUnionSelector == Int8(3)) {
                colorTmpBufOpt = Union_Color_String_Resource_ColoringStrategy(ColoringStrategy(valueDeserializer.readInt32()))
            } else {
                throw Exception("One of the branches for colorTmpBufOpt has to be chosen through deserialisation.")
            }
            colorTmpBuf = match (colorTmpBufOpt as Union_Color_String_Resource_ColoringStrategy) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let colorTmpResult: Option<Union_Color_String_Resource_ColoringStrategy> = colorTmpBuf
        let offsetXTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var offsetXTmpBuf: Option<Union_Number_Resource> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(offsetXTmpBuf_runtimeType))) {
            let offsetXTmpBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var offsetXTmpBufOpt: Union_Number_Resource 
            if (offsetXTmpBufOptUnionSelector == Int8(0)) {
                offsetXTmpBufOpt = Union_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (offsetXTmpBufOptUnionSelector == Int8(1)) {
                offsetXTmpBufOpt = Union_Number_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for offsetXTmpBufOpt has to be chosen through deserialisation.")
            }
            offsetXTmpBuf = match (offsetXTmpBufOpt as Union_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let offsetXTmpResult: Option<Union_Number_Resource> = offsetXTmpBuf
        let offsetYTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var offsetYTmpBuf: Option<Union_Number_Resource> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(offsetYTmpBuf_runtimeType))) {
            let offsetYTmpBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var offsetYTmpBufOpt: Union_Number_Resource 
            if (offsetYTmpBufOptUnionSelector == Int8(0)) {
                offsetYTmpBufOpt = Union_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (offsetYTmpBufOptUnionSelector == Int8(1)) {
                offsetYTmpBufOpt = Union_Number_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for offsetYTmpBufOpt has to be chosen through deserialisation.")
            }
            offsetYTmpBuf = match (offsetYTmpBufOpt as Union_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let offsetYTmpResult: Option<Union_Number_Resource> = offsetYTmpBuf
        let fillTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var fillTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(fillTmpBuf_runtimeType))) {
            fillTmpBuf = valueDeserializer.readBoolean()
        }
        let fillTmpResult: Option<Bool> = fillTmpBuf
        var value: ShadowOptions = ShadowOptions(radiusTmpResult, typeTmpResult, colorTmpResult, offsetXTmpResult, offsetYTmpResult, fillTmpResult)
        return value
    }
}
public open class SheetTitleOptions_serializer {
    public static func write(buffer: SerializerBase, value: SheetTitleOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForTitle = value.title
        if (valueHolderForTitle.getSelector() == 0) {
            valueSerializer.writeInt8(Int8(0));
            let valueHolderForTitleForIdx0 = valueHolderForTitle.getValue0()
            valueSerializer.writeString(valueHolderForTitleForIdx0);
        } else if (valueHolderForTitle.getSelector() == 1) {
            valueSerializer.writeInt8(Int8(1));
            let valueHolderForTitleForIdx1 = valueHolderForTitle.getValue1()
            global_resource_Resource_serializer.write(valueSerializer, valueHolderForTitleForIdx1);
        }
        let valueHolderForSubtitle = value.subtitle
        if (let Some(valueHolderForSubtitle) <- valueHolderForSubtitle) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForSubtitleTmpValue = valueHolderForSubtitle
            if (valueHolderForSubtitleTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForSubtitleTmpValueForIdx0 = valueHolderForSubtitleTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForSubtitleTmpValueForIdx0);
            } else if (valueHolderForSubtitleTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForSubtitleTmpValueForIdx1 = valueHolderForSubtitleTmpValue.getValue1()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForSubtitleTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): SheetTitleOptions {
        var valueDeserializer: DeserializerBase = buffer
        let titleTmpBufUnionSelector: Int8 = valueDeserializer.readInt8()
        var titleTmpBuf: Union_String_Resource 
        if (titleTmpBufUnionSelector == Int8(0)) {
            titleTmpBuf = Union_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
        } else if (titleTmpBufUnionSelector == Int8(1)) {
            titleTmpBuf = Union_String_Resource(global_resource_Resource_serializer.read(valueDeserializer))
        } else {
            throw Exception("One of the branches for titleTmpBuf has to be chosen through deserialisation.")
        }
        let titleTmpResult: ResourceStr = match (titleTmpBuf as Union_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let subtitleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var subtitleTmpBuf: Option<ResourceStr> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(subtitleTmpBuf_runtimeType))) {
            let subtitleTmpBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var subtitleTmpBufOpt: Union_String_Resource 
            if (subtitleTmpBufOptUnionSelector == Int8(0)) {
                subtitleTmpBufOpt = Union_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (subtitleTmpBufOptUnionSelector == Int8(1)) {
                subtitleTmpBufOpt = Union_String_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for subtitleTmpBufOpt has to be chosen through deserialisation.")
            }
            subtitleTmpBuf = match (subtitleTmpBufOpt as Union_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let subtitleTmpResult: Option<ResourceStr> = subtitleTmpBuf
        var value: SheetTitleOptions = SheetTitleOptions(titleTmpResult, subtitleTmpResult)
        return value
    }
}
public open class arkui_component_Position_serializer {
    public static func write(buffer: SerializerBase, value: Position): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForX = value.x
        if (let Some(valueHolderForX) <- valueHolderForX) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForXTmpValue = valueHolderForX
            if (valueHolderForXTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForXTmpValueForIdx0 = valueHolderForXTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForXTmpValueForIdx0);
            } else if (valueHolderForXTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForXTmpValueForIdx1 = valueHolderForXTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForXTmpValueForIdx1);
            } else if (valueHolderForXTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForXTmpValueForIdx2 = valueHolderForXTmpValue.getValue2()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForXTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForY = value.y
        if (let Some(valueHolderForY) <- valueHolderForY) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForYTmpValue = valueHolderForY
            if (valueHolderForYTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForYTmpValueForIdx0 = valueHolderForYTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForYTmpValueForIdx0);
            } else if (valueHolderForYTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForYTmpValueForIdx1 = valueHolderForYTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForYTmpValueForIdx1);
            } else if (valueHolderForYTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForYTmpValueForIdx2 = valueHolderForYTmpValue.getValue2()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForYTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): Position {
        var valueDeserializer: DeserializerBase = buffer
        let xTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var xTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(xTmpBuf_runtimeType))) {
            let xTmpBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var xTmpBufOpt: Union_String_Number_Resource 
            if (xTmpBufOptUnionSelector == Int8(0)) {
                xTmpBufOpt = Union_String_Number_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (xTmpBufOptUnionSelector == Int8(1)) {
                xTmpBufOpt = Union_String_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (xTmpBufOptUnionSelector == Int8(2)) {
                xTmpBufOpt = Union_String_Number_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for xTmpBufOpt has to be chosen through deserialisation.")
            }
            xTmpBuf = match (xTmpBufOpt as Union_String_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let xTmpResult: Option<Length> = xTmpBuf
        let yTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var yTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(yTmpBuf_runtimeType))) {
            let yTmpBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var yTmpBufOpt: Union_String_Number_Resource 
            if (yTmpBufOptUnionSelector == Int8(0)) {
                yTmpBufOpt = Union_String_Number_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (yTmpBufOptUnionSelector == Int8(1)) {
                yTmpBufOpt = Union_String_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (yTmpBufOptUnionSelector == Int8(2)) {
                yTmpBufOpt = Union_String_Number_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for yTmpBufOpt has to be chosen through deserialisation.")
            }
            yTmpBuf = match (yTmpBufOpt as Union_String_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let yTmpResult: Option<Length> = yTmpBuf
        var value: Position = Position(xTmpResult, yTmpResult)
        return value
    }
}
public open class Rectangle_serializer {
    public static func write(buffer: SerializerBase, value: Rectangle): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForX = value.x
        if (let Some(valueHolderForX) <- valueHolderForX) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForXTmpValue = valueHolderForX
            if (valueHolderForXTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForXTmpValueForIdx0 = valueHolderForXTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForXTmpValueForIdx0);
            } else if (valueHolderForXTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForXTmpValueForIdx1 = valueHolderForXTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForXTmpValueForIdx1);
            } else if (valueHolderForXTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForXTmpValueForIdx2 = valueHolderForXTmpValue.getValue2()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForXTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForY = value.y
        if (let Some(valueHolderForY) <- valueHolderForY) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForYTmpValue = valueHolderForY
            if (valueHolderForYTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForYTmpValueForIdx0 = valueHolderForYTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForYTmpValueForIdx0);
            } else if (valueHolderForYTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForYTmpValueForIdx1 = valueHolderForYTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForYTmpValueForIdx1);
            } else if (valueHolderForYTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForYTmpValueForIdx2 = valueHolderForYTmpValue.getValue2()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForYTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForWidth = value.width
        if (let Some(valueHolderForWidth) <- valueHolderForWidth) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWidthTmpValue = valueHolderForWidth
            if (valueHolderForWidthTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForWidthTmpValueForIdx0 = valueHolderForWidthTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForWidthTmpValueForIdx0);
            } else if (valueHolderForWidthTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForWidthTmpValueForIdx1 = valueHolderForWidthTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForWidthTmpValueForIdx1);
            } else if (valueHolderForWidthTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForWidthTmpValueForIdx2 = valueHolderForWidthTmpValue.getValue2()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForWidthTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForHeight = value.height
        if (let Some(valueHolderForHeight) <- valueHolderForHeight) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForHeightTmpValue = valueHolderForHeight
            if (valueHolderForHeightTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForHeightTmpValueForIdx0 = valueHolderForHeightTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForHeightTmpValueForIdx0);
            } else if (valueHolderForHeightTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForHeightTmpValueForIdx1 = valueHolderForHeightTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForHeightTmpValueForIdx1);
            } else if (valueHolderForHeightTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForHeightTmpValueForIdx2 = valueHolderForHeightTmpValue.getValue2()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForHeightTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): Rectangle {
        var valueDeserializer: DeserializerBase = buffer
        let xTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var xTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(xTmpBuf_runtimeType))) {
            let xTmpBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var xTmpBufOpt: Union_String_Number_Resource 
            if (xTmpBufOptUnionSelector == Int8(0)) {
                xTmpBufOpt = Union_String_Number_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (xTmpBufOptUnionSelector == Int8(1)) {
                xTmpBufOpt = Union_String_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (xTmpBufOptUnionSelector == Int8(2)) {
                xTmpBufOpt = Union_String_Number_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for xTmpBufOpt has to be chosen through deserialisation.")
            }
            xTmpBuf = match (xTmpBufOpt as Union_String_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let xTmpResult: Option<Length> = xTmpBuf
        let yTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var yTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(yTmpBuf_runtimeType))) {
            let yTmpBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var yTmpBufOpt: Union_String_Number_Resource 
            if (yTmpBufOptUnionSelector == Int8(0)) {
                yTmpBufOpt = Union_String_Number_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (yTmpBufOptUnionSelector == Int8(1)) {
                yTmpBufOpt = Union_String_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (yTmpBufOptUnionSelector == Int8(2)) {
                yTmpBufOpt = Union_String_Number_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for yTmpBufOpt has to be chosen through deserialisation.")
            }
            yTmpBuf = match (yTmpBufOpt as Union_String_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let yTmpResult: Option<Length> = yTmpBuf
        let widthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var widthTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(widthTmpBuf_runtimeType))) {
            let widthTmpBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var widthTmpBufOpt: Union_String_Number_Resource 
            if (widthTmpBufOptUnionSelector == Int8(0)) {
                widthTmpBufOpt = Union_String_Number_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (widthTmpBufOptUnionSelector == Int8(1)) {
                widthTmpBufOpt = Union_String_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (widthTmpBufOptUnionSelector == Int8(2)) {
                widthTmpBufOpt = Union_String_Number_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for widthTmpBufOpt has to be chosen through deserialisation.")
            }
            widthTmpBuf = match (widthTmpBufOpt as Union_String_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let widthTmpResult: Option<Length> = widthTmpBuf
        let heightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var heightTmpBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(heightTmpBuf_runtimeType))) {
            let heightTmpBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var heightTmpBufOpt: Union_String_Number_Resource 
            if (heightTmpBufOptUnionSelector == Int8(0)) {
                heightTmpBufOpt = Union_String_Number_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (heightTmpBufOptUnionSelector == Int8(1)) {
                heightTmpBufOpt = Union_String_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (heightTmpBufOptUnionSelector == Int8(2)) {
                heightTmpBufOpt = Union_String_Number_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for heightTmpBufOpt has to be chosen through deserialisation.")
            }
            heightTmpBuf = match (heightTmpBufOpt as Union_String_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let heightTmpResult: Option<Length> = heightTmpBuf
        var value: Rectangle = Rectangle(xTmpResult, yTmpResult, widthTmpResult, heightTmpResult)
        return value
    }
}
public open class GeometryInfo_serializer {
    public static func write(buffer: SerializerBase, value: GeometryInfo): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForWidth = value.width
        valueSerializer.writeNumber(valueHolderForWidth);
        let valueHolderForHeight = value.height
        valueSerializer.writeNumber(valueHolderForHeight);
        let valueHolderForBorderWidth = value.borderWidth
        let valueHolderForBorderWidthTop = valueHolderForBorderWidth.top
        if (let Some(valueHolderForBorderWidthTop) <- valueHolderForBorderWidthTop) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBorderWidthTopTmpValue = valueHolderForBorderWidthTop
            if (valueHolderForBorderWidthTopTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBorderWidthTopTmpValueForIdx0 = valueHolderForBorderWidthTopTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForBorderWidthTopTmpValueForIdx0);
            } else if (valueHolderForBorderWidthTopTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBorderWidthTopTmpValueForIdx1 = valueHolderForBorderWidthTopTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForBorderWidthTopTmpValueForIdx1);
            } else if (valueHolderForBorderWidthTopTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForBorderWidthTopTmpValueForIdx2 = valueHolderForBorderWidthTopTmpValue.getValue2()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForBorderWidthTopTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBorderWidthRight = valueHolderForBorderWidth.right
        if (let Some(valueHolderForBorderWidthRight) <- valueHolderForBorderWidthRight) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBorderWidthRightTmpValue = valueHolderForBorderWidthRight
            if (valueHolderForBorderWidthRightTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBorderWidthRightTmpValueForIdx0 = valueHolderForBorderWidthRightTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForBorderWidthRightTmpValueForIdx0);
            } else if (valueHolderForBorderWidthRightTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBorderWidthRightTmpValueForIdx1 = valueHolderForBorderWidthRightTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForBorderWidthRightTmpValueForIdx1);
            } else if (valueHolderForBorderWidthRightTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForBorderWidthRightTmpValueForIdx2 = valueHolderForBorderWidthRightTmpValue.getValue2()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForBorderWidthRightTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBorderWidthBottom = valueHolderForBorderWidth.bottom
        if (let Some(valueHolderForBorderWidthBottom) <- valueHolderForBorderWidthBottom) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBorderWidthBottomTmpValue = valueHolderForBorderWidthBottom
            if (valueHolderForBorderWidthBottomTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBorderWidthBottomTmpValueForIdx0 = valueHolderForBorderWidthBottomTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForBorderWidthBottomTmpValueForIdx0);
            } else if (valueHolderForBorderWidthBottomTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBorderWidthBottomTmpValueForIdx1 = valueHolderForBorderWidthBottomTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForBorderWidthBottomTmpValueForIdx1);
            } else if (valueHolderForBorderWidthBottomTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForBorderWidthBottomTmpValueForIdx2 = valueHolderForBorderWidthBottomTmpValue.getValue2()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForBorderWidthBottomTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBorderWidthLeft = valueHolderForBorderWidth.left
        if (let Some(valueHolderForBorderWidthLeft) <- valueHolderForBorderWidthLeft) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBorderWidthLeftTmpValue = valueHolderForBorderWidthLeft
            if (valueHolderForBorderWidthLeftTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBorderWidthLeftTmpValueForIdx0 = valueHolderForBorderWidthLeftTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForBorderWidthLeftTmpValueForIdx0);
            } else if (valueHolderForBorderWidthLeftTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBorderWidthLeftTmpValueForIdx1 = valueHolderForBorderWidthLeftTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForBorderWidthLeftTmpValueForIdx1);
            } else if (valueHolderForBorderWidthLeftTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForBorderWidthLeftTmpValueForIdx2 = valueHolderForBorderWidthLeftTmpValue.getValue2()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForBorderWidthLeftTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMargin = value.margin
        let valueHolderForMarginTop = valueHolderForMargin.top
        if (let Some(valueHolderForMarginTop) <- valueHolderForMarginTop) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMarginTopTmpValue = valueHolderForMarginTop
            if (valueHolderForMarginTopTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForMarginTopTmpValueForIdx0 = valueHolderForMarginTopTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForMarginTopTmpValueForIdx0);
            } else if (valueHolderForMarginTopTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForMarginTopTmpValueForIdx1 = valueHolderForMarginTopTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForMarginTopTmpValueForIdx1);
            } else if (valueHolderForMarginTopTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForMarginTopTmpValueForIdx2 = valueHolderForMarginTopTmpValue.getValue2()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForMarginTopTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMarginRight = valueHolderForMargin.right
        if (let Some(valueHolderForMarginRight) <- valueHolderForMarginRight) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMarginRightTmpValue = valueHolderForMarginRight
            if (valueHolderForMarginRightTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForMarginRightTmpValueForIdx0 = valueHolderForMarginRightTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForMarginRightTmpValueForIdx0);
            } else if (valueHolderForMarginRightTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForMarginRightTmpValueForIdx1 = valueHolderForMarginRightTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForMarginRightTmpValueForIdx1);
            } else if (valueHolderForMarginRightTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForMarginRightTmpValueForIdx2 = valueHolderForMarginRightTmpValue.getValue2()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForMarginRightTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMarginBottom = valueHolderForMargin.bottom
        if (let Some(valueHolderForMarginBottom) <- valueHolderForMarginBottom) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMarginBottomTmpValue = valueHolderForMarginBottom
            if (valueHolderForMarginBottomTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForMarginBottomTmpValueForIdx0 = valueHolderForMarginBottomTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForMarginBottomTmpValueForIdx0);
            } else if (valueHolderForMarginBottomTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForMarginBottomTmpValueForIdx1 = valueHolderForMarginBottomTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForMarginBottomTmpValueForIdx1);
            } else if (valueHolderForMarginBottomTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForMarginBottomTmpValueForIdx2 = valueHolderForMarginBottomTmpValue.getValue2()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForMarginBottomTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMarginLeft = valueHolderForMargin.left
        if (let Some(valueHolderForMarginLeft) <- valueHolderForMarginLeft) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMarginLeftTmpValue = valueHolderForMarginLeft
            if (valueHolderForMarginLeftTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForMarginLeftTmpValueForIdx0 = valueHolderForMarginLeftTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForMarginLeftTmpValueForIdx0);
            } else if (valueHolderForMarginLeftTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForMarginLeftTmpValueForIdx1 = valueHolderForMarginLeftTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForMarginLeftTmpValueForIdx1);
            } else if (valueHolderForMarginLeftTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForMarginLeftTmpValueForIdx2 = valueHolderForMarginLeftTmpValue.getValue2()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForMarginLeftTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForPadding = value.padding
        let valueHolderForPaddingTop = valueHolderForPadding.top
        if (let Some(valueHolderForPaddingTop) <- valueHolderForPaddingTop) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPaddingTopTmpValue = valueHolderForPaddingTop
            if (valueHolderForPaddingTopTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForPaddingTopTmpValueForIdx0 = valueHolderForPaddingTopTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForPaddingTopTmpValueForIdx0);
            } else if (valueHolderForPaddingTopTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForPaddingTopTmpValueForIdx1 = valueHolderForPaddingTopTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForPaddingTopTmpValueForIdx1);
            } else if (valueHolderForPaddingTopTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForPaddingTopTmpValueForIdx2 = valueHolderForPaddingTopTmpValue.getValue2()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForPaddingTopTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForPaddingRight = valueHolderForPadding.right
        if (let Some(valueHolderForPaddingRight) <- valueHolderForPaddingRight) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPaddingRightTmpValue = valueHolderForPaddingRight
            if (valueHolderForPaddingRightTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForPaddingRightTmpValueForIdx0 = valueHolderForPaddingRightTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForPaddingRightTmpValueForIdx0);
            } else if (valueHolderForPaddingRightTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForPaddingRightTmpValueForIdx1 = valueHolderForPaddingRightTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForPaddingRightTmpValueForIdx1);
            } else if (valueHolderForPaddingRightTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForPaddingRightTmpValueForIdx2 = valueHolderForPaddingRightTmpValue.getValue2()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForPaddingRightTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForPaddingBottom = valueHolderForPadding.bottom
        if (let Some(valueHolderForPaddingBottom) <- valueHolderForPaddingBottom) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPaddingBottomTmpValue = valueHolderForPaddingBottom
            if (valueHolderForPaddingBottomTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForPaddingBottomTmpValueForIdx0 = valueHolderForPaddingBottomTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForPaddingBottomTmpValueForIdx0);
            } else if (valueHolderForPaddingBottomTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForPaddingBottomTmpValueForIdx1 = valueHolderForPaddingBottomTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForPaddingBottomTmpValueForIdx1);
            } else if (valueHolderForPaddingBottomTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForPaddingBottomTmpValueForIdx2 = valueHolderForPaddingBottomTmpValue.getValue2()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForPaddingBottomTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForPaddingLeft = valueHolderForPadding.left
        if (let Some(valueHolderForPaddingLeft) <- valueHolderForPaddingLeft) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPaddingLeftTmpValue = valueHolderForPaddingLeft
            if (valueHolderForPaddingLeftTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForPaddingLeftTmpValueForIdx0 = valueHolderForPaddingLeftTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForPaddingLeftTmpValueForIdx0);
            } else if (valueHolderForPaddingLeftTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForPaddingLeftTmpValueForIdx1 = valueHolderForPaddingLeftTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForPaddingLeftTmpValueForIdx1);
            } else if (valueHolderForPaddingLeftTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForPaddingLeftTmpValueForIdx2 = valueHolderForPaddingLeftTmpValue.getValue2()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForPaddingLeftTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): GeometryInfo {
        var valueDeserializer: DeserializerBase = buffer
        let widthTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let heightTmpResult: Float64 = match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        let borderWidthTmpBufTopTempBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var borderWidthTmpBufTopTempBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderWidthTmpBufTopTempBuf_runtimeType))) {
            let borderWidthTmpBufTopTempBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var borderWidthTmpBufTopTempBufOpt: Union_String_Number_Resource 
            if (borderWidthTmpBufTopTempBufOptUnionSelector == Int8(0)) {
                borderWidthTmpBufTopTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderWidthTmpBufTopTempBufOptUnionSelector == Int8(1)) {
                borderWidthTmpBufTopTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderWidthTmpBufTopTempBufOptUnionSelector == Int8(2)) {
                borderWidthTmpBufTopTempBufOpt = Union_String_Number_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for borderWidthTmpBufTopTempBufOpt has to be chosen through deserialisation.")
            }
            borderWidthTmpBufTopTempBuf = match (borderWidthTmpBufTopTempBufOpt as Union_String_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let borderWidthTmpBufTop: Option<Length> = borderWidthTmpBufTopTempBuf
        let borderWidthTmpBufRightTempBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var borderWidthTmpBufRightTempBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderWidthTmpBufRightTempBuf_runtimeType))) {
            let borderWidthTmpBufRightTempBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var borderWidthTmpBufRightTempBufOpt: Union_String_Number_Resource 
            if (borderWidthTmpBufRightTempBufOptUnionSelector == Int8(0)) {
                borderWidthTmpBufRightTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderWidthTmpBufRightTempBufOptUnionSelector == Int8(1)) {
                borderWidthTmpBufRightTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderWidthTmpBufRightTempBufOptUnionSelector == Int8(2)) {
                borderWidthTmpBufRightTempBufOpt = Union_String_Number_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for borderWidthTmpBufRightTempBufOpt has to be chosen through deserialisation.")
            }
            borderWidthTmpBufRightTempBuf = match (borderWidthTmpBufRightTempBufOpt as Union_String_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let borderWidthTmpBufRight: Option<Length> = borderWidthTmpBufRightTempBuf
        let borderWidthTmpBufBottomTempBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var borderWidthTmpBufBottomTempBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderWidthTmpBufBottomTempBuf_runtimeType))) {
            let borderWidthTmpBufBottomTempBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var borderWidthTmpBufBottomTempBufOpt: Union_String_Number_Resource 
            if (borderWidthTmpBufBottomTempBufOptUnionSelector == Int8(0)) {
                borderWidthTmpBufBottomTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderWidthTmpBufBottomTempBufOptUnionSelector == Int8(1)) {
                borderWidthTmpBufBottomTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderWidthTmpBufBottomTempBufOptUnionSelector == Int8(2)) {
                borderWidthTmpBufBottomTempBufOpt = Union_String_Number_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for borderWidthTmpBufBottomTempBufOpt has to be chosen through deserialisation.")
            }
            borderWidthTmpBufBottomTempBuf = match (borderWidthTmpBufBottomTempBufOpt as Union_String_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let borderWidthTmpBufBottom: Option<Length> = borderWidthTmpBufBottomTempBuf
        let borderWidthTmpBufLeftTempBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var borderWidthTmpBufLeftTempBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderWidthTmpBufLeftTempBuf_runtimeType))) {
            let borderWidthTmpBufLeftTempBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var borderWidthTmpBufLeftTempBufOpt: Union_String_Number_Resource 
            if (borderWidthTmpBufLeftTempBufOptUnionSelector == Int8(0)) {
                borderWidthTmpBufLeftTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderWidthTmpBufLeftTempBufOptUnionSelector == Int8(1)) {
                borderWidthTmpBufLeftTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderWidthTmpBufLeftTempBufOptUnionSelector == Int8(2)) {
                borderWidthTmpBufLeftTempBufOpt = Union_String_Number_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for borderWidthTmpBufLeftTempBufOpt has to be chosen through deserialisation.")
            }
            borderWidthTmpBufLeftTempBuf = match (borderWidthTmpBufLeftTempBufOpt as Union_String_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let borderWidthTmpBufLeft: Option<Length> = borderWidthTmpBufLeftTempBuf
        let borderWidthTmpResult: EdgeWidth = EdgeWidth(borderWidthTmpBufTop, borderWidthTmpBufRight, borderWidthTmpBufBottom, borderWidthTmpBufLeft)
        let marginTmpBufTopTempBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var marginTmpBufTopTempBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(marginTmpBufTopTempBuf_runtimeType))) {
            let marginTmpBufTopTempBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var marginTmpBufTopTempBufOpt: Union_String_Number_Resource 
            if (marginTmpBufTopTempBufOptUnionSelector == Int8(0)) {
                marginTmpBufTopTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (marginTmpBufTopTempBufOptUnionSelector == Int8(1)) {
                marginTmpBufTopTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (marginTmpBufTopTempBufOptUnionSelector == Int8(2)) {
                marginTmpBufTopTempBufOpt = Union_String_Number_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for marginTmpBufTopTempBufOpt has to be chosen through deserialisation.")
            }
            marginTmpBufTopTempBuf = match (marginTmpBufTopTempBufOpt as Union_String_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let marginTmpBufTop: Option<Length> = marginTmpBufTopTempBuf
        let marginTmpBufRightTempBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var marginTmpBufRightTempBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(marginTmpBufRightTempBuf_runtimeType))) {
            let marginTmpBufRightTempBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var marginTmpBufRightTempBufOpt: Union_String_Number_Resource 
            if (marginTmpBufRightTempBufOptUnionSelector == Int8(0)) {
                marginTmpBufRightTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (marginTmpBufRightTempBufOptUnionSelector == Int8(1)) {
                marginTmpBufRightTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (marginTmpBufRightTempBufOptUnionSelector == Int8(2)) {
                marginTmpBufRightTempBufOpt = Union_String_Number_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for marginTmpBufRightTempBufOpt has to be chosen through deserialisation.")
            }
            marginTmpBufRightTempBuf = match (marginTmpBufRightTempBufOpt as Union_String_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let marginTmpBufRight: Option<Length> = marginTmpBufRightTempBuf
        let marginTmpBufBottomTempBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var marginTmpBufBottomTempBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(marginTmpBufBottomTempBuf_runtimeType))) {
            let marginTmpBufBottomTempBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var marginTmpBufBottomTempBufOpt: Union_String_Number_Resource 
            if (marginTmpBufBottomTempBufOptUnionSelector == Int8(0)) {
                marginTmpBufBottomTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (marginTmpBufBottomTempBufOptUnionSelector == Int8(1)) {
                marginTmpBufBottomTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (marginTmpBufBottomTempBufOptUnionSelector == Int8(2)) {
                marginTmpBufBottomTempBufOpt = Union_String_Number_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for marginTmpBufBottomTempBufOpt has to be chosen through deserialisation.")
            }
            marginTmpBufBottomTempBuf = match (marginTmpBufBottomTempBufOpt as Union_String_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let marginTmpBufBottom: Option<Length> = marginTmpBufBottomTempBuf
        let marginTmpBufLeftTempBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var marginTmpBufLeftTempBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(marginTmpBufLeftTempBuf_runtimeType))) {
            let marginTmpBufLeftTempBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var marginTmpBufLeftTempBufOpt: Union_String_Number_Resource 
            if (marginTmpBufLeftTempBufOptUnionSelector == Int8(0)) {
                marginTmpBufLeftTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (marginTmpBufLeftTempBufOptUnionSelector == Int8(1)) {
                marginTmpBufLeftTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (marginTmpBufLeftTempBufOptUnionSelector == Int8(2)) {
                marginTmpBufLeftTempBufOpt = Union_String_Number_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for marginTmpBufLeftTempBufOpt has to be chosen through deserialisation.")
            }
            marginTmpBufLeftTempBuf = match (marginTmpBufLeftTempBufOpt as Union_String_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let marginTmpBufLeft: Option<Length> = marginTmpBufLeftTempBuf
        let marginTmpResult: Margin = Margin(marginTmpBufTop, marginTmpBufRight, marginTmpBufBottom, marginTmpBufLeft)
        let paddingTmpBufTopTempBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var paddingTmpBufTopTempBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(paddingTmpBufTopTempBuf_runtimeType))) {
            let paddingTmpBufTopTempBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var paddingTmpBufTopTempBufOpt: Union_String_Number_Resource 
            if (paddingTmpBufTopTempBufOptUnionSelector == Int8(0)) {
                paddingTmpBufTopTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (paddingTmpBufTopTempBufOptUnionSelector == Int8(1)) {
                paddingTmpBufTopTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (paddingTmpBufTopTempBufOptUnionSelector == Int8(2)) {
                paddingTmpBufTopTempBufOpt = Union_String_Number_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for paddingTmpBufTopTempBufOpt has to be chosen through deserialisation.")
            }
            paddingTmpBufTopTempBuf = match (paddingTmpBufTopTempBufOpt as Union_String_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let paddingTmpBufTop: Option<Length> = paddingTmpBufTopTempBuf
        let paddingTmpBufRightTempBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var paddingTmpBufRightTempBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(paddingTmpBufRightTempBuf_runtimeType))) {
            let paddingTmpBufRightTempBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var paddingTmpBufRightTempBufOpt: Union_String_Number_Resource 
            if (paddingTmpBufRightTempBufOptUnionSelector == Int8(0)) {
                paddingTmpBufRightTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (paddingTmpBufRightTempBufOptUnionSelector == Int8(1)) {
                paddingTmpBufRightTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (paddingTmpBufRightTempBufOptUnionSelector == Int8(2)) {
                paddingTmpBufRightTempBufOpt = Union_String_Number_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for paddingTmpBufRightTempBufOpt has to be chosen through deserialisation.")
            }
            paddingTmpBufRightTempBuf = match (paddingTmpBufRightTempBufOpt as Union_String_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let paddingTmpBufRight: Option<Length> = paddingTmpBufRightTempBuf
        let paddingTmpBufBottomTempBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var paddingTmpBufBottomTempBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(paddingTmpBufBottomTempBuf_runtimeType))) {
            let paddingTmpBufBottomTempBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var paddingTmpBufBottomTempBufOpt: Union_String_Number_Resource 
            if (paddingTmpBufBottomTempBufOptUnionSelector == Int8(0)) {
                paddingTmpBufBottomTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (paddingTmpBufBottomTempBufOptUnionSelector == Int8(1)) {
                paddingTmpBufBottomTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (paddingTmpBufBottomTempBufOptUnionSelector == Int8(2)) {
                paddingTmpBufBottomTempBufOpt = Union_String_Number_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for paddingTmpBufBottomTempBufOpt has to be chosen through deserialisation.")
            }
            paddingTmpBufBottomTempBuf = match (paddingTmpBufBottomTempBufOpt as Union_String_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let paddingTmpBufBottom: Option<Length> = paddingTmpBufBottomTempBuf
        let paddingTmpBufLeftTempBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var paddingTmpBufLeftTempBuf: Option<Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(paddingTmpBufLeftTempBuf_runtimeType))) {
            let paddingTmpBufLeftTempBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var paddingTmpBufLeftTempBufOpt: Union_String_Number_Resource 
            if (paddingTmpBufLeftTempBufOptUnionSelector == Int8(0)) {
                paddingTmpBufLeftTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (paddingTmpBufLeftTempBufOptUnionSelector == Int8(1)) {
                paddingTmpBufLeftTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (paddingTmpBufLeftTempBufOptUnionSelector == Int8(2)) {
                paddingTmpBufLeftTempBufOpt = Union_String_Number_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for paddingTmpBufLeftTempBufOpt has to be chosen through deserialisation.")
            }
            paddingTmpBufLeftTempBuf = match (paddingTmpBufLeftTempBufOpt as Union_String_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let paddingTmpBufLeft: Option<Length> = paddingTmpBufLeftTempBuf
        let paddingTmpResult: Padding = Padding(paddingTmpBufTop, paddingTmpBufRight, paddingTmpBufBottom, paddingTmpBufLeft)
        var value: GeometryInfo = GeometryInfo(borderWidthTmpResult, marginTmpResult, paddingTmpResult, widthTmpResult, heightTmpResult)
        return value
    }
}
public open class SheetOptions_serializer {
    public static func write(buffer: SerializerBase, value: SheetOptions): Unit {
        var valueSerializer: SerializerBase = buffer
        let valueHolderForBackgroundColor = value.backgroundColor
        if (let Some(valueHolderForBackgroundColor) <- valueHolderForBackgroundColor) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBackgroundColorTmpValue = valueHolderForBackgroundColor
            if (valueHolderForBackgroundColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBackgroundColorTmpValueForIdx0 = valueHolderForBackgroundColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForBackgroundColorTmpValueForIdx0.value);
            } else if (valueHolderForBackgroundColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBackgroundColorTmpValueForIdx1 = valueHolderForBackgroundColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForBackgroundColorTmpValueForIdx1);
            } else if (valueHolderForBackgroundColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForBackgroundColorTmpValueForIdx2 = valueHolderForBackgroundColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForBackgroundColorTmpValueForIdx2);
            } else if (valueHolderForBackgroundColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForBackgroundColorTmpValueForIdx3 = valueHolderForBackgroundColorTmpValue.getValue3()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForBackgroundColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnAppear = value.onAppear
        if (let Some(valueHolderForOnAppear) <- valueHolderForOnAppear) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnAppearTmpValue = valueHolderForOnAppear
            valueSerializer.holdAndWriteCallback(valueHolderForOnAppearTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnDisappear = value.onDisappear
        if (let Some(valueHolderForOnDisappear) <- valueHolderForOnDisappear) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnDisappearTmpValue = valueHolderForOnDisappear
            valueSerializer.holdAndWriteCallback(valueHolderForOnDisappearTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnWillAppear = value.onWillAppear
        if (let Some(valueHolderForOnWillAppear) <- valueHolderForOnWillAppear) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnWillAppearTmpValue = valueHolderForOnWillAppear
            valueSerializer.holdAndWriteCallback(valueHolderForOnWillAppearTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnWillDisappear = value.onWillDisappear
        if (let Some(valueHolderForOnWillDisappear) <- valueHolderForOnWillDisappear) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnWillDisappearTmpValue = valueHolderForOnWillDisappear
            valueSerializer.holdAndWriteCallback(valueHolderForOnWillDisappearTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForHeight = value.height
        if (let Some(valueHolderForHeight) <- valueHolderForHeight) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForHeightTmpValue = valueHolderForHeight
            if (valueHolderForHeightTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForHeightTmpValueForIdx0 = valueHolderForHeightTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForHeightTmpValueForIdx0.value);
            } else if (valueHolderForHeightTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForHeightTmpValueForIdx1 = valueHolderForHeightTmpValue.getValue1()
                if (valueHolderForHeightTmpValueForIdx1.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForHeightTmpValueForIdx1ForIdx0 = valueHolderForHeightTmpValueForIdx1.getValue0()
                    valueSerializer.writeString(valueHolderForHeightTmpValueForIdx1ForIdx0);
                } else if (valueHolderForHeightTmpValueForIdx1.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForHeightTmpValueForIdx1ForIdx1 = valueHolderForHeightTmpValueForIdx1.getValue1()
                    valueSerializer.writeNumber(valueHolderForHeightTmpValueForIdx1ForIdx1);
                } else if (valueHolderForHeightTmpValueForIdx1.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForHeightTmpValueForIdx1ForIdx2 = valueHolderForHeightTmpValueForIdx1.getValue2()
                    global_resource_Resource_serializer.write(valueSerializer, valueHolderForHeightTmpValueForIdx1ForIdx2);
                }
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDragBar = value.dragBar
        if (let Some(valueHolderForDragBar) <- valueHolderForDragBar) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDragBarTmpValue = valueHolderForDragBar
            valueSerializer.writeBoolean(valueHolderForDragBarTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMaskColor = value.maskColor
        if (let Some(valueHolderForMaskColor) <- valueHolderForMaskColor) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForMaskColorTmpValue = valueHolderForMaskColor
            if (valueHolderForMaskColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForMaskColorTmpValueForIdx0 = valueHolderForMaskColorTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForMaskColorTmpValueForIdx0.value);
            } else if (valueHolderForMaskColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForMaskColorTmpValueForIdx1 = valueHolderForMaskColorTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForMaskColorTmpValueForIdx1);
            } else if (valueHolderForMaskColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForMaskColorTmpValueForIdx2 = valueHolderForMaskColorTmpValue.getValue2()
                valueSerializer.writeString(valueHolderForMaskColorTmpValueForIdx2);
            } else if (valueHolderForMaskColorTmpValue.getSelector() == 3) {
                valueSerializer.writeInt8(Int8(3));
                let valueHolderForMaskColorTmpValueForIdx3 = valueHolderForMaskColorTmpValue.getValue3()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForMaskColorTmpValueForIdx3);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForDetents = value.detents
        if (let Some(valueHolderForDetents) <- valueHolderForDetents) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForDetentsTmpValue = valueHolderForDetents
            let valueHolderForDetentsTmpValue_0 = valueHolderForDetentsTmpValue.value0
            if (valueHolderForDetentsTmpValue_0.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForDetentsTmpValue_0ForIdx0 = valueHolderForDetentsTmpValue_0.getValue0()
                valueSerializer.writeInt32(valueHolderForDetentsTmpValue_0ForIdx0.value);
            } else if (valueHolderForDetentsTmpValue_0.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForDetentsTmpValue_0ForIdx1 = valueHolderForDetentsTmpValue_0.getValue1()
                if (valueHolderForDetentsTmpValue_0ForIdx1.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForDetentsTmpValue_0ForIdx1ForIdx0 = valueHolderForDetentsTmpValue_0ForIdx1.getValue0()
                    valueSerializer.writeString(valueHolderForDetentsTmpValue_0ForIdx1ForIdx0);
                } else if (valueHolderForDetentsTmpValue_0ForIdx1.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForDetentsTmpValue_0ForIdx1ForIdx1 = valueHolderForDetentsTmpValue_0ForIdx1.getValue1()
                    valueSerializer.writeNumber(valueHolderForDetentsTmpValue_0ForIdx1ForIdx1);
                } else if (valueHolderForDetentsTmpValue_0ForIdx1.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForDetentsTmpValue_0ForIdx1ForIdx2 = valueHolderForDetentsTmpValue_0ForIdx1.getValue2()
                    global_resource_Resource_serializer.write(valueSerializer, valueHolderForDetentsTmpValue_0ForIdx1ForIdx2);
                }
            }
            let valueHolderForDetentsTmpValue_1 = valueHolderForDetentsTmpValue.value1
            if (let Some(valueHolderForDetentsTmpValue_1) <- valueHolderForDetentsTmpValue_1) {
                valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                let valueHolderForDetentsTmpValue_1TmpValue = valueHolderForDetentsTmpValue_1
                if (valueHolderForDetentsTmpValue_1TmpValue.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForDetentsTmpValue_1TmpValueForIdx0 = valueHolderForDetentsTmpValue_1TmpValue.getValue0()
                    valueSerializer.writeInt32(valueHolderForDetentsTmpValue_1TmpValueForIdx0.value);
                } else if (valueHolderForDetentsTmpValue_1TmpValue.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForDetentsTmpValue_1TmpValueForIdx1 = valueHolderForDetentsTmpValue_1TmpValue.getValue1()
                    if (valueHolderForDetentsTmpValue_1TmpValueForIdx1.getSelector() == 0) {
                        valueSerializer.writeInt8(Int8(0));
                        let valueHolderForDetentsTmpValue_1TmpValueForIdx1ForIdx0 = valueHolderForDetentsTmpValue_1TmpValueForIdx1.getValue0()
                        valueSerializer.writeString(valueHolderForDetentsTmpValue_1TmpValueForIdx1ForIdx0);
                    } else if (valueHolderForDetentsTmpValue_1TmpValueForIdx1.getSelector() == 1) {
                        valueSerializer.writeInt8(Int8(1));
                        let valueHolderForDetentsTmpValue_1TmpValueForIdx1ForIdx1 = valueHolderForDetentsTmpValue_1TmpValueForIdx1.getValue1()
                        valueSerializer.writeNumber(valueHolderForDetentsTmpValue_1TmpValueForIdx1ForIdx1);
                    } else if (valueHolderForDetentsTmpValue_1TmpValueForIdx1.getSelector() == 2) {
                        valueSerializer.writeInt8(Int8(2));
                        let valueHolderForDetentsTmpValue_1TmpValueForIdx1ForIdx2 = valueHolderForDetentsTmpValue_1TmpValueForIdx1.getValue2()
                        global_resource_Resource_serializer.write(valueSerializer, valueHolderForDetentsTmpValue_1TmpValueForIdx1ForIdx2);
                    }
                }
            } else {
                valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
            }
            let valueHolderForDetentsTmpValue_2 = valueHolderForDetentsTmpValue.value2
            if (let Some(valueHolderForDetentsTmpValue_2) <- valueHolderForDetentsTmpValue_2) {
                valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                let valueHolderForDetentsTmpValue_2TmpValue = valueHolderForDetentsTmpValue_2
                if (valueHolderForDetentsTmpValue_2TmpValue.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForDetentsTmpValue_2TmpValueForIdx0 = valueHolderForDetentsTmpValue_2TmpValue.getValue0()
                    valueSerializer.writeInt32(valueHolderForDetentsTmpValue_2TmpValueForIdx0.value);
                } else if (valueHolderForDetentsTmpValue_2TmpValue.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForDetentsTmpValue_2TmpValueForIdx1 = valueHolderForDetentsTmpValue_2TmpValue.getValue1()
                    if (valueHolderForDetentsTmpValue_2TmpValueForIdx1.getSelector() == 0) {
                        valueSerializer.writeInt8(Int8(0));
                        let valueHolderForDetentsTmpValue_2TmpValueForIdx1ForIdx0 = valueHolderForDetentsTmpValue_2TmpValueForIdx1.getValue0()
                        valueSerializer.writeString(valueHolderForDetentsTmpValue_2TmpValueForIdx1ForIdx0);
                    } else if (valueHolderForDetentsTmpValue_2TmpValueForIdx1.getSelector() == 1) {
                        valueSerializer.writeInt8(Int8(1));
                        let valueHolderForDetentsTmpValue_2TmpValueForIdx1ForIdx1 = valueHolderForDetentsTmpValue_2TmpValueForIdx1.getValue1()
                        valueSerializer.writeNumber(valueHolderForDetentsTmpValue_2TmpValueForIdx1ForIdx1);
                    } else if (valueHolderForDetentsTmpValue_2TmpValueForIdx1.getSelector() == 2) {
                        valueSerializer.writeInt8(Int8(2));
                        let valueHolderForDetentsTmpValue_2TmpValueForIdx1ForIdx2 = valueHolderForDetentsTmpValue_2TmpValueForIdx1.getValue2()
                        global_resource_Resource_serializer.write(valueSerializer, valueHolderForDetentsTmpValue_2TmpValueForIdx1ForIdx2);
                    }
                }
            } else {
                valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBlurStyle = value.blurStyle
        if (let Some(valueHolderForBlurStyle) <- valueHolderForBlurStyle) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBlurStyleTmpValue = valueHolderForBlurStyle
            valueSerializer.writeInt32(valueHolderForBlurStyleTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForShowClose = value.showClose
        if (let Some(valueHolderForShowClose) <- valueHolderForShowClose) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForShowCloseTmpValue = valueHolderForShowClose
            if (valueHolderForShowCloseTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForShowCloseTmpValueForIdx0 = valueHolderForShowCloseTmpValue.getValue0()
                valueSerializer.writeBoolean(valueHolderForShowCloseTmpValueForIdx0);
            } else if (valueHolderForShowCloseTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForShowCloseTmpValueForIdx1 = valueHolderForShowCloseTmpValue.getValue1()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForShowCloseTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForPreferType = value.preferType
        if (let Some(valueHolderForPreferType) <- valueHolderForPreferType) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForPreferTypeTmpValue = valueHolderForPreferType
            valueSerializer.writeInt32(valueHolderForPreferTypeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForTitle = value.title
        if (let Some(valueHolderForTitle) <- valueHolderForTitle) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForTitleTmpValue = valueHolderForTitle
            if (valueHolderForTitleTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForTitleTmpValueForIdx0 = valueHolderForTitleTmpValue.getValue0()
                SheetTitleOptions_serializer.write(valueSerializer, valueHolderForTitleTmpValueForIdx0);
            } else if (valueHolderForTitleTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForTitleTmpValueForIdx1 = valueHolderForTitleTmpValue.getValue1()
                valueSerializer.holdAndWriteCallback(valueHolderForTitleTmpValueForIdx1);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForShouldDismiss = value.shouldDismiss
        if (let Some(valueHolderForShouldDismiss) <- valueHolderForShouldDismiss) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForShouldDismissTmpValue = valueHolderForShouldDismiss
            valueSerializer.holdAndWriteCallback(valueHolderForShouldDismissTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnWillDismiss = value.onWillDismiss
        if (let Some(valueHolderForOnWillDismiss) <- valueHolderForOnWillDismiss) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnWillDismissTmpValue = valueHolderForOnWillDismiss
            valueSerializer.holdAndWriteCallback(valueHolderForOnWillDismissTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnWillSpringBackWhenDismiss = value.onWillSpringBackWhenDismiss
        if (let Some(valueHolderForOnWillSpringBackWhenDismiss) <- valueHolderForOnWillSpringBackWhenDismiss) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnWillSpringBackWhenDismissTmpValue = valueHolderForOnWillSpringBackWhenDismiss
            valueSerializer.holdAndWriteCallback(valueHolderForOnWillSpringBackWhenDismissTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEnableOutsideInteractive = value.enableOutsideInteractive
        if (let Some(valueHolderForEnableOutsideInteractive) <- valueHolderForEnableOutsideInteractive) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEnableOutsideInteractiveTmpValue = valueHolderForEnableOutsideInteractive
            valueSerializer.writeBoolean(valueHolderForEnableOutsideInteractiveTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForWidth = value.width
        if (let Some(valueHolderForWidth) <- valueHolderForWidth) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForWidthTmpValue = valueHolderForWidth
            if (valueHolderForWidthTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForWidthTmpValueForIdx0 = valueHolderForWidthTmpValue.getValue0()
                valueSerializer.writeString(valueHolderForWidthTmpValueForIdx0);
            } else if (valueHolderForWidthTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForWidthTmpValueForIdx1 = valueHolderForWidthTmpValue.getValue1()
                valueSerializer.writeNumber(valueHolderForWidthTmpValueForIdx1);
            } else if (valueHolderForWidthTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForWidthTmpValueForIdx2 = valueHolderForWidthTmpValue.getValue2()
                global_resource_Resource_serializer.write(valueSerializer, valueHolderForWidthTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBorderWidth = value.borderWidth
        if (let Some(valueHolderForBorderWidth) <- valueHolderForBorderWidth) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBorderWidthTmpValue = valueHolderForBorderWidth
            if (valueHolderForBorderWidthTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBorderWidthTmpValueForIdx0 = valueHolderForBorderWidthTmpValue.getValue0()
                if (valueHolderForBorderWidthTmpValueForIdx0.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForBorderWidthTmpValueForIdx0ForIdx0 = valueHolderForBorderWidthTmpValueForIdx0.getValue0()
                    valueSerializer.writeString(valueHolderForBorderWidthTmpValueForIdx0ForIdx0);
                } else if (valueHolderForBorderWidthTmpValueForIdx0.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForBorderWidthTmpValueForIdx0ForIdx1 = valueHolderForBorderWidthTmpValueForIdx0.getValue1()
                    valueSerializer.writeNumber(valueHolderForBorderWidthTmpValueForIdx0ForIdx1);
                } else if (valueHolderForBorderWidthTmpValueForIdx0.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForBorderWidthTmpValueForIdx0ForIdx2 = valueHolderForBorderWidthTmpValueForIdx0.getValue2()
                    global_resource_Resource_serializer.write(valueSerializer, valueHolderForBorderWidthTmpValueForIdx0ForIdx2);
                }
            } else if (valueHolderForBorderWidthTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBorderWidthTmpValueForIdx1 = valueHolderForBorderWidthTmpValue.getValue1()
                let valueHolderForBorderWidthTmpValueForIdx1Top = valueHolderForBorderWidthTmpValueForIdx1.top
                if (let Some(valueHolderForBorderWidthTmpValueForIdx1Top) <- valueHolderForBorderWidthTmpValueForIdx1Top) {
                    valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                    let valueHolderForBorderWidthTmpValueForIdx1TopTmpValue = valueHolderForBorderWidthTmpValueForIdx1Top
                    if (valueHolderForBorderWidthTmpValueForIdx1TopTmpValue.getSelector() == 0) {
                        valueSerializer.writeInt8(Int8(0));
                        let valueHolderForBorderWidthTmpValueForIdx1TopTmpValueForIdx0 = valueHolderForBorderWidthTmpValueForIdx1TopTmpValue.getValue0()
                        valueSerializer.writeString(valueHolderForBorderWidthTmpValueForIdx1TopTmpValueForIdx0);
                    } else if (valueHolderForBorderWidthTmpValueForIdx1TopTmpValue.getSelector() == 1) {
                        valueSerializer.writeInt8(Int8(1));
                        let valueHolderForBorderWidthTmpValueForIdx1TopTmpValueForIdx1 = valueHolderForBorderWidthTmpValueForIdx1TopTmpValue.getValue1()
                        valueSerializer.writeNumber(valueHolderForBorderWidthTmpValueForIdx1TopTmpValueForIdx1);
                    } else if (valueHolderForBorderWidthTmpValueForIdx1TopTmpValue.getSelector() == 2) {
                        valueSerializer.writeInt8(Int8(2));
                        let valueHolderForBorderWidthTmpValueForIdx1TopTmpValueForIdx2 = valueHolderForBorderWidthTmpValueForIdx1TopTmpValue.getValue2()
                        global_resource_Resource_serializer.write(valueSerializer, valueHolderForBorderWidthTmpValueForIdx1TopTmpValueForIdx2);
                    }
                } else {
                    valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
                }
                let valueHolderForBorderWidthTmpValueForIdx1Right = valueHolderForBorderWidthTmpValueForIdx1.right
                if (let Some(valueHolderForBorderWidthTmpValueForIdx1Right) <- valueHolderForBorderWidthTmpValueForIdx1Right) {
                    valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                    let valueHolderForBorderWidthTmpValueForIdx1RightTmpValue = valueHolderForBorderWidthTmpValueForIdx1Right
                    if (valueHolderForBorderWidthTmpValueForIdx1RightTmpValue.getSelector() == 0) {
                        valueSerializer.writeInt8(Int8(0));
                        let valueHolderForBorderWidthTmpValueForIdx1RightTmpValueForIdx0 = valueHolderForBorderWidthTmpValueForIdx1RightTmpValue.getValue0()
                        valueSerializer.writeString(valueHolderForBorderWidthTmpValueForIdx1RightTmpValueForIdx0);
                    } else if (valueHolderForBorderWidthTmpValueForIdx1RightTmpValue.getSelector() == 1) {
                        valueSerializer.writeInt8(Int8(1));
                        let valueHolderForBorderWidthTmpValueForIdx1RightTmpValueForIdx1 = valueHolderForBorderWidthTmpValueForIdx1RightTmpValue.getValue1()
                        valueSerializer.writeNumber(valueHolderForBorderWidthTmpValueForIdx1RightTmpValueForIdx1);
                    } else if (valueHolderForBorderWidthTmpValueForIdx1RightTmpValue.getSelector() == 2) {
                        valueSerializer.writeInt8(Int8(2));
                        let valueHolderForBorderWidthTmpValueForIdx1RightTmpValueForIdx2 = valueHolderForBorderWidthTmpValueForIdx1RightTmpValue.getValue2()
                        global_resource_Resource_serializer.write(valueSerializer, valueHolderForBorderWidthTmpValueForIdx1RightTmpValueForIdx2);
                    }
                } else {
                    valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
                }
                let valueHolderForBorderWidthTmpValueForIdx1Bottom = valueHolderForBorderWidthTmpValueForIdx1.bottom
                if (let Some(valueHolderForBorderWidthTmpValueForIdx1Bottom) <- valueHolderForBorderWidthTmpValueForIdx1Bottom) {
                    valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                    let valueHolderForBorderWidthTmpValueForIdx1BottomTmpValue = valueHolderForBorderWidthTmpValueForIdx1Bottom
                    if (valueHolderForBorderWidthTmpValueForIdx1BottomTmpValue.getSelector() == 0) {
                        valueSerializer.writeInt8(Int8(0));
                        let valueHolderForBorderWidthTmpValueForIdx1BottomTmpValueForIdx0 = valueHolderForBorderWidthTmpValueForIdx1BottomTmpValue.getValue0()
                        valueSerializer.writeString(valueHolderForBorderWidthTmpValueForIdx1BottomTmpValueForIdx0);
                    } else if (valueHolderForBorderWidthTmpValueForIdx1BottomTmpValue.getSelector() == 1) {
                        valueSerializer.writeInt8(Int8(1));
                        let valueHolderForBorderWidthTmpValueForIdx1BottomTmpValueForIdx1 = valueHolderForBorderWidthTmpValueForIdx1BottomTmpValue.getValue1()
                        valueSerializer.writeNumber(valueHolderForBorderWidthTmpValueForIdx1BottomTmpValueForIdx1);
                    } else if (valueHolderForBorderWidthTmpValueForIdx1BottomTmpValue.getSelector() == 2) {
                        valueSerializer.writeInt8(Int8(2));
                        let valueHolderForBorderWidthTmpValueForIdx1BottomTmpValueForIdx2 = valueHolderForBorderWidthTmpValueForIdx1BottomTmpValue.getValue2()
                        global_resource_Resource_serializer.write(valueSerializer, valueHolderForBorderWidthTmpValueForIdx1BottomTmpValueForIdx2);
                    }
                } else {
                    valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
                }
                let valueHolderForBorderWidthTmpValueForIdx1Left = valueHolderForBorderWidthTmpValueForIdx1.left
                if (let Some(valueHolderForBorderWidthTmpValueForIdx1Left) <- valueHolderForBorderWidthTmpValueForIdx1Left) {
                    valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                    let valueHolderForBorderWidthTmpValueForIdx1LeftTmpValue = valueHolderForBorderWidthTmpValueForIdx1Left
                    if (valueHolderForBorderWidthTmpValueForIdx1LeftTmpValue.getSelector() == 0) {
                        valueSerializer.writeInt8(Int8(0));
                        let valueHolderForBorderWidthTmpValueForIdx1LeftTmpValueForIdx0 = valueHolderForBorderWidthTmpValueForIdx1LeftTmpValue.getValue0()
                        valueSerializer.writeString(valueHolderForBorderWidthTmpValueForIdx1LeftTmpValueForIdx0);
                    } else if (valueHolderForBorderWidthTmpValueForIdx1LeftTmpValue.getSelector() == 1) {
                        valueSerializer.writeInt8(Int8(1));
                        let valueHolderForBorderWidthTmpValueForIdx1LeftTmpValueForIdx1 = valueHolderForBorderWidthTmpValueForIdx1LeftTmpValue.getValue1()
                        valueSerializer.writeNumber(valueHolderForBorderWidthTmpValueForIdx1LeftTmpValueForIdx1);
                    } else if (valueHolderForBorderWidthTmpValueForIdx1LeftTmpValue.getSelector() == 2) {
                        valueSerializer.writeInt8(Int8(2));
                        let valueHolderForBorderWidthTmpValueForIdx1LeftTmpValueForIdx2 = valueHolderForBorderWidthTmpValueForIdx1LeftTmpValue.getValue2()
                        global_resource_Resource_serializer.write(valueSerializer, valueHolderForBorderWidthTmpValueForIdx1LeftTmpValueForIdx2);
                    }
                } else {
                    valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
                }
            } else if (valueHolderForBorderWidthTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForBorderWidthTmpValueForIdx2 = valueHolderForBorderWidthTmpValue.getValue2()
                LocalizedEdgeWidths_serializer.write(valueSerializer, valueHolderForBorderWidthTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBorderColor = value.borderColor
        if (let Some(valueHolderForBorderColor) <- valueHolderForBorderColor) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBorderColorTmpValue = valueHolderForBorderColor
            if (valueHolderForBorderColorTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBorderColorTmpValueForIdx0 = valueHolderForBorderColorTmpValue.getValue0()
                if (valueHolderForBorderColorTmpValueForIdx0.getSelector() == 0) {
                    valueSerializer.writeInt8(Int8(0));
                    let valueHolderForBorderColorTmpValueForIdx0ForIdx0 = valueHolderForBorderColorTmpValueForIdx0.getValue0()
                    valueSerializer.writeInt32(valueHolderForBorderColorTmpValueForIdx0ForIdx0.value);
                } else if (valueHolderForBorderColorTmpValueForIdx0.getSelector() == 1) {
                    valueSerializer.writeInt8(Int8(1));
                    let valueHolderForBorderColorTmpValueForIdx0ForIdx1 = valueHolderForBorderColorTmpValueForIdx0.getValue1()
                    valueSerializer.writeNumber(valueHolderForBorderColorTmpValueForIdx0ForIdx1);
                } else if (valueHolderForBorderColorTmpValueForIdx0.getSelector() == 2) {
                    valueSerializer.writeInt8(Int8(2));
                    let valueHolderForBorderColorTmpValueForIdx0ForIdx2 = valueHolderForBorderColorTmpValueForIdx0.getValue2()
                    valueSerializer.writeString(valueHolderForBorderColorTmpValueForIdx0ForIdx2);
                } else if (valueHolderForBorderColorTmpValueForIdx0.getSelector() == 3) {
                    valueSerializer.writeInt8(Int8(3));
                    let valueHolderForBorderColorTmpValueForIdx0ForIdx3 = valueHolderForBorderColorTmpValueForIdx0.getValue3()
                    global_resource_Resource_serializer.write(valueSerializer, valueHolderForBorderColorTmpValueForIdx0ForIdx3);
                }
            } else if (valueHolderForBorderColorTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBorderColorTmpValueForIdx1 = valueHolderForBorderColorTmpValue.getValue1()
                let valueHolderForBorderColorTmpValueForIdx1Top = valueHolderForBorderColorTmpValueForIdx1.top
                if (let Some(valueHolderForBorderColorTmpValueForIdx1Top) <- valueHolderForBorderColorTmpValueForIdx1Top) {
                    valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                    let valueHolderForBorderColorTmpValueForIdx1TopTmpValue = valueHolderForBorderColorTmpValueForIdx1Top
                    if (valueHolderForBorderColorTmpValueForIdx1TopTmpValue.getSelector() == 0) {
                        valueSerializer.writeInt8(Int8(0));
                        let valueHolderForBorderColorTmpValueForIdx1TopTmpValueForIdx0 = valueHolderForBorderColorTmpValueForIdx1TopTmpValue.getValue0()
                        valueSerializer.writeInt32(valueHolderForBorderColorTmpValueForIdx1TopTmpValueForIdx0.value);
                    } else if (valueHolderForBorderColorTmpValueForIdx1TopTmpValue.getSelector() == 1) {
                        valueSerializer.writeInt8(Int8(1));
                        let valueHolderForBorderColorTmpValueForIdx1TopTmpValueForIdx1 = valueHolderForBorderColorTmpValueForIdx1TopTmpValue.getValue1()
                        valueSerializer.writeNumber(valueHolderForBorderColorTmpValueForIdx1TopTmpValueForIdx1);
                    } else if (valueHolderForBorderColorTmpValueForIdx1TopTmpValue.getSelector() == 2) {
                        valueSerializer.writeInt8(Int8(2));
                        let valueHolderForBorderColorTmpValueForIdx1TopTmpValueForIdx2 = valueHolderForBorderColorTmpValueForIdx1TopTmpValue.getValue2()
                        valueSerializer.writeString(valueHolderForBorderColorTmpValueForIdx1TopTmpValueForIdx2);
                    } else if (valueHolderForBorderColorTmpValueForIdx1TopTmpValue.getSelector() == 3) {
                        valueSerializer.writeInt8(Int8(3));
                        let valueHolderForBorderColorTmpValueForIdx1TopTmpValueForIdx3 = valueHolderForBorderColorTmpValueForIdx1TopTmpValue.getValue3()
                        global_resource_Resource_serializer.write(valueSerializer, valueHolderForBorderColorTmpValueForIdx1TopTmpValueForIdx3);
                    }
                } else {
                    valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
                }
                let valueHolderForBorderColorTmpValueForIdx1Right = valueHolderForBorderColorTmpValueForIdx1.right
                if (let Some(valueHolderForBorderColorTmpValueForIdx1Right) <- valueHolderForBorderColorTmpValueForIdx1Right) {
                    valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                    let valueHolderForBorderColorTmpValueForIdx1RightTmpValue = valueHolderForBorderColorTmpValueForIdx1Right
                    if (valueHolderForBorderColorTmpValueForIdx1RightTmpValue.getSelector() == 0) {
                        valueSerializer.writeInt8(Int8(0));
                        let valueHolderForBorderColorTmpValueForIdx1RightTmpValueForIdx0 = valueHolderForBorderColorTmpValueForIdx1RightTmpValue.getValue0()
                        valueSerializer.writeInt32(valueHolderForBorderColorTmpValueForIdx1RightTmpValueForIdx0.value);
                    } else if (valueHolderForBorderColorTmpValueForIdx1RightTmpValue.getSelector() == 1) {
                        valueSerializer.writeInt8(Int8(1));
                        let valueHolderForBorderColorTmpValueForIdx1RightTmpValueForIdx1 = valueHolderForBorderColorTmpValueForIdx1RightTmpValue.getValue1()
                        valueSerializer.writeNumber(valueHolderForBorderColorTmpValueForIdx1RightTmpValueForIdx1);
                    } else if (valueHolderForBorderColorTmpValueForIdx1RightTmpValue.getSelector() == 2) {
                        valueSerializer.writeInt8(Int8(2));
                        let valueHolderForBorderColorTmpValueForIdx1RightTmpValueForIdx2 = valueHolderForBorderColorTmpValueForIdx1RightTmpValue.getValue2()
                        valueSerializer.writeString(valueHolderForBorderColorTmpValueForIdx1RightTmpValueForIdx2);
                    } else if (valueHolderForBorderColorTmpValueForIdx1RightTmpValue.getSelector() == 3) {
                        valueSerializer.writeInt8(Int8(3));
                        let valueHolderForBorderColorTmpValueForIdx1RightTmpValueForIdx3 = valueHolderForBorderColorTmpValueForIdx1RightTmpValue.getValue3()
                        global_resource_Resource_serializer.write(valueSerializer, valueHolderForBorderColorTmpValueForIdx1RightTmpValueForIdx3);
                    }
                } else {
                    valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
                }
                let valueHolderForBorderColorTmpValueForIdx1Bottom = valueHolderForBorderColorTmpValueForIdx1.bottom
                if (let Some(valueHolderForBorderColorTmpValueForIdx1Bottom) <- valueHolderForBorderColorTmpValueForIdx1Bottom) {
                    valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                    let valueHolderForBorderColorTmpValueForIdx1BottomTmpValue = valueHolderForBorderColorTmpValueForIdx1Bottom
                    if (valueHolderForBorderColorTmpValueForIdx1BottomTmpValue.getSelector() == 0) {
                        valueSerializer.writeInt8(Int8(0));
                        let valueHolderForBorderColorTmpValueForIdx1BottomTmpValueForIdx0 = valueHolderForBorderColorTmpValueForIdx1BottomTmpValue.getValue0()
                        valueSerializer.writeInt32(valueHolderForBorderColorTmpValueForIdx1BottomTmpValueForIdx0.value);
                    } else if (valueHolderForBorderColorTmpValueForIdx1BottomTmpValue.getSelector() == 1) {
                        valueSerializer.writeInt8(Int8(1));
                        let valueHolderForBorderColorTmpValueForIdx1BottomTmpValueForIdx1 = valueHolderForBorderColorTmpValueForIdx1BottomTmpValue.getValue1()
                        valueSerializer.writeNumber(valueHolderForBorderColorTmpValueForIdx1BottomTmpValueForIdx1);
                    } else if (valueHolderForBorderColorTmpValueForIdx1BottomTmpValue.getSelector() == 2) {
                        valueSerializer.writeInt8(Int8(2));
                        let valueHolderForBorderColorTmpValueForIdx1BottomTmpValueForIdx2 = valueHolderForBorderColorTmpValueForIdx1BottomTmpValue.getValue2()
                        valueSerializer.writeString(valueHolderForBorderColorTmpValueForIdx1BottomTmpValueForIdx2);
                    } else if (valueHolderForBorderColorTmpValueForIdx1BottomTmpValue.getSelector() == 3) {
                        valueSerializer.writeInt8(Int8(3));
                        let valueHolderForBorderColorTmpValueForIdx1BottomTmpValueForIdx3 = valueHolderForBorderColorTmpValueForIdx1BottomTmpValue.getValue3()
                        global_resource_Resource_serializer.write(valueSerializer, valueHolderForBorderColorTmpValueForIdx1BottomTmpValueForIdx3);
                    }
                } else {
                    valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
                }
                let valueHolderForBorderColorTmpValueForIdx1Left = valueHolderForBorderColorTmpValueForIdx1.left
                if (let Some(valueHolderForBorderColorTmpValueForIdx1Left) <- valueHolderForBorderColorTmpValueForIdx1Left) {
                    valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                    let valueHolderForBorderColorTmpValueForIdx1LeftTmpValue = valueHolderForBorderColorTmpValueForIdx1Left
                    if (valueHolderForBorderColorTmpValueForIdx1LeftTmpValue.getSelector() == 0) {
                        valueSerializer.writeInt8(Int8(0));
                        let valueHolderForBorderColorTmpValueForIdx1LeftTmpValueForIdx0 = valueHolderForBorderColorTmpValueForIdx1LeftTmpValue.getValue0()
                        valueSerializer.writeInt32(valueHolderForBorderColorTmpValueForIdx1LeftTmpValueForIdx0.value);
                    } else if (valueHolderForBorderColorTmpValueForIdx1LeftTmpValue.getSelector() == 1) {
                        valueSerializer.writeInt8(Int8(1));
                        let valueHolderForBorderColorTmpValueForIdx1LeftTmpValueForIdx1 = valueHolderForBorderColorTmpValueForIdx1LeftTmpValue.getValue1()
                        valueSerializer.writeNumber(valueHolderForBorderColorTmpValueForIdx1LeftTmpValueForIdx1);
                    } else if (valueHolderForBorderColorTmpValueForIdx1LeftTmpValue.getSelector() == 2) {
                        valueSerializer.writeInt8(Int8(2));
                        let valueHolderForBorderColorTmpValueForIdx1LeftTmpValueForIdx2 = valueHolderForBorderColorTmpValueForIdx1LeftTmpValue.getValue2()
                        valueSerializer.writeString(valueHolderForBorderColorTmpValueForIdx1LeftTmpValueForIdx2);
                    } else if (valueHolderForBorderColorTmpValueForIdx1LeftTmpValue.getSelector() == 3) {
                        valueSerializer.writeInt8(Int8(3));
                        let valueHolderForBorderColorTmpValueForIdx1LeftTmpValueForIdx3 = valueHolderForBorderColorTmpValueForIdx1LeftTmpValue.getValue3()
                        global_resource_Resource_serializer.write(valueSerializer, valueHolderForBorderColorTmpValueForIdx1LeftTmpValueForIdx3);
                    }
                } else {
                    valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
                }
            } else if (valueHolderForBorderColorTmpValue.getSelector() == 2) {
                valueSerializer.writeInt8(Int8(2));
                let valueHolderForBorderColorTmpValueForIdx2 = valueHolderForBorderColorTmpValue.getValue2()
                LocalizedEdgeColors_serializer.write(valueSerializer, valueHolderForBorderColorTmpValueForIdx2);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForBorderStyle = value.borderStyle
        if (let Some(valueHolderForBorderStyle) <- valueHolderForBorderStyle) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForBorderStyleTmpValue = valueHolderForBorderStyle
            if (valueHolderForBorderStyleTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForBorderStyleTmpValueForIdx0 = valueHolderForBorderStyleTmpValue.getValue0()
                valueSerializer.writeInt32(valueHolderForBorderStyleTmpValueForIdx0.value);
            } else if (valueHolderForBorderStyleTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForBorderStyleTmpValueForIdx1 = valueHolderForBorderStyleTmpValue.getValue1()
                let valueHolderForBorderStyleTmpValueForIdx1Top = valueHolderForBorderStyleTmpValueForIdx1.top
                if (let Some(valueHolderForBorderStyleTmpValueForIdx1Top) <- valueHolderForBorderStyleTmpValueForIdx1Top) {
                    valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                    let valueHolderForBorderStyleTmpValueForIdx1TopTmpValue = valueHolderForBorderStyleTmpValueForIdx1Top
                    valueSerializer.writeInt32(valueHolderForBorderStyleTmpValueForIdx1TopTmpValue.value);
                } else {
                    valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
                }
                let valueHolderForBorderStyleTmpValueForIdx1Right = valueHolderForBorderStyleTmpValueForIdx1.right
                if (let Some(valueHolderForBorderStyleTmpValueForIdx1Right) <- valueHolderForBorderStyleTmpValueForIdx1Right) {
                    valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                    let valueHolderForBorderStyleTmpValueForIdx1RightTmpValue = valueHolderForBorderStyleTmpValueForIdx1Right
                    valueSerializer.writeInt32(valueHolderForBorderStyleTmpValueForIdx1RightTmpValue.value);
                } else {
                    valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
                }
                let valueHolderForBorderStyleTmpValueForIdx1Bottom = valueHolderForBorderStyleTmpValueForIdx1.bottom
                if (let Some(valueHolderForBorderStyleTmpValueForIdx1Bottom) <- valueHolderForBorderStyleTmpValueForIdx1Bottom) {
                    valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                    let valueHolderForBorderStyleTmpValueForIdx1BottomTmpValue = valueHolderForBorderStyleTmpValueForIdx1Bottom
                    valueSerializer.writeInt32(valueHolderForBorderStyleTmpValueForIdx1BottomTmpValue.value);
                } else {
                    valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
                }
                let valueHolderForBorderStyleTmpValueForIdx1Left = valueHolderForBorderStyleTmpValueForIdx1.left
                if (let Some(valueHolderForBorderStyleTmpValueForIdx1Left) <- valueHolderForBorderStyleTmpValueForIdx1Left) {
                    valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
                    let valueHolderForBorderStyleTmpValueForIdx1LeftTmpValue = valueHolderForBorderStyleTmpValueForIdx1Left
                    valueSerializer.writeInt32(valueHolderForBorderStyleTmpValueForIdx1LeftTmpValue.value);
                } else {
                    valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
                }
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForShadow = value.shadow
        if (let Some(valueHolderForShadow) <- valueHolderForShadow) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForShadowTmpValue = valueHolderForShadow
            if (valueHolderForShadowTmpValue.getSelector() == 0) {
                valueSerializer.writeInt8(Int8(0));
                let valueHolderForShadowTmpValueForIdx0 = valueHolderForShadowTmpValue.getValue0()
                ShadowOptions_serializer.write(valueSerializer, valueHolderForShadowTmpValueForIdx0);
            } else if (valueHolderForShadowTmpValue.getSelector() == 1) {
                valueSerializer.writeInt8(Int8(1));
                let valueHolderForShadowTmpValueForIdx1 = valueHolderForShadowTmpValue.getValue1()
                valueSerializer.writeInt32(valueHolderForShadowTmpValueForIdx1.value);
            }
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnHeightDidChange = value.onHeightDidChange
        if (let Some(valueHolderForOnHeightDidChange) <- valueHolderForOnHeightDidChange) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnHeightDidChangeTmpValue = valueHolderForOnHeightDidChange
            valueSerializer.holdAndWriteCallback(valueHolderForOnHeightDidChangeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForMode = value.mode
        if (let Some(valueHolderForMode) <- valueHolderForMode) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForModeTmpValue = valueHolderForMode
            valueSerializer.writeInt32(valueHolderForModeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForScrollSizeMode = value.scrollSizeMode
        if (let Some(valueHolderForScrollSizeMode) <- valueHolderForScrollSizeMode) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForScrollSizeModeTmpValue = valueHolderForScrollSizeMode
            valueSerializer.writeInt32(valueHolderForScrollSizeModeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnDetentsDidChange = value.onDetentsDidChange
        if (let Some(valueHolderForOnDetentsDidChange) <- valueHolderForOnDetentsDidChange) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnDetentsDidChangeTmpValue = valueHolderForOnDetentsDidChange
            valueSerializer.holdAndWriteCallback(valueHolderForOnDetentsDidChangeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnWidthDidChange = value.onWidthDidChange
        if (let Some(valueHolderForOnWidthDidChange) <- valueHolderForOnWidthDidChange) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnWidthDidChangeTmpValue = valueHolderForOnWidthDidChange
            valueSerializer.holdAndWriteCallback(valueHolderForOnWidthDidChangeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOnTypeDidChange = value.onTypeDidChange
        if (let Some(valueHolderForOnTypeDidChange) <- valueHolderForOnTypeDidChange) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOnTypeDidChangeTmpValue = valueHolderForOnTypeDidChange
            valueSerializer.holdAndWriteCallback(valueHolderForOnTypeDidChangeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForUiContext = value.uiContext
        if (let Some(valueHolderForUiContext) <- valueHolderForUiContext) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForUiContextTmpValue = valueHolderForUiContext
            ohos_arkui_UIContext_UIContext_serializer.write(valueSerializer, valueHolderForUiContextTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForKeyboardAvoidMode = value.keyboardAvoidMode
        if (let Some(valueHolderForKeyboardAvoidMode) <- valueHolderForKeyboardAvoidMode) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForKeyboardAvoidModeTmpValue = valueHolderForKeyboardAvoidMode
            valueSerializer.writeInt32(valueHolderForKeyboardAvoidModeTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForEnableHoverMode = value.enableHoverMode
        if (let Some(valueHolderForEnableHoverMode) <- valueHolderForEnableHoverMode) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForEnableHoverModeTmpValue = valueHolderForEnableHoverMode
            valueSerializer.writeBoolean(valueHolderForEnableHoverModeTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForHoverModeArea = value.hoverModeArea
        if (let Some(valueHolderForHoverModeArea) <- valueHolderForHoverModeArea) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForHoverModeAreaTmpValue = valueHolderForHoverModeArea
            valueSerializer.writeInt32(valueHolderForHoverModeAreaTmpValue.value);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let valueHolderForOffset = value.offset
        if (let Some(valueHolderForOffset) <- valueHolderForOffset) {
            valueSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let valueHolderForOffsetTmpValue = valueHolderForOffset
            arkui_component_Position_serializer.write(valueSerializer, valueHolderForOffsetTmpValue);
        } else {
            valueSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
    }
    public static func read(buffer: DeserializerBase): SheetOptions {
        var valueDeserializer: DeserializerBase = buffer
        let backgroundColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var backgroundColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(backgroundColorTmpBuf_runtimeType))) {
            let backgroundColorTmpBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var backgroundColorTmpBufOpt: Union_Color_Number_String_Resource 
            if (backgroundColorTmpBufOptUnionSelector == Int8(0)) {
                backgroundColorTmpBufOpt = Union_Color_Number_String_Resource(Color(valueDeserializer.readInt32()))
            } else if (backgroundColorTmpBufOptUnionSelector == Int8(1)) {
                backgroundColorTmpBufOpt = Union_Color_Number_String_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (backgroundColorTmpBufOptUnionSelector == Int8(2)) {
                backgroundColorTmpBufOpt = Union_Color_Number_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (backgroundColorTmpBufOptUnionSelector == Int8(3)) {
                backgroundColorTmpBufOpt = Union_Color_Number_String_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for backgroundColorTmpBufOpt has to be chosen through deserialisation.")
            }
            backgroundColorTmpBuf = match (backgroundColorTmpBufOpt as Union_Color_Number_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let backgroundColorTmpResult: Option<ResourceColor> = backgroundColorTmpBuf
        let onAppearTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onAppearTmpBuf: Option<(() -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onAppearTmpBuf_runtimeType))) {
            let onAppearTmpBufOptBufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onAppearTmpBufOptBufCall: UInt64 = valueDeserializer.readPointer()
            let onAppearTmpBufOptBufCallSync: UInt64 = valueDeserializer.readPointer()
            onAppearTmpBuf = { => let onAppearTmpBufOptBufArgsSerializer: SerializerBase = SerializerBase.hold();
onAppearTmpBufOptBufArgsSerializer.writeInt32(onAppearTmpBufOptBufResource.resourceId);
onAppearTmpBufOptBufArgsSerializer.writePointer(onAppearTmpBufOptBufCall);
onAppearTmpBufOptBufArgsSerializer.writePointer(onAppearTmpBufOptBufCallSync);
InteropNativeModule._CallCallbackSync(10, 1743390416, onAppearTmpBufOptBufArgsSerializer.asBuffer(), onAppearTmpBufOptBufArgsSerializer.length());
onAppearTmpBufOptBufArgsSerializer.release();
return; }
        }
        let onAppearTmpResult: Option<(() -> Unit)> = onAppearTmpBuf
        let onDisappearTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onDisappearTmpBuf: Option<(() -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onDisappearTmpBuf_runtimeType))) {
            let onDisappearTmpBufOptBufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onDisappearTmpBufOptBufCall: UInt64 = valueDeserializer.readPointer()
            let onDisappearTmpBufOptBufCallSync: UInt64 = valueDeserializer.readPointer()
            onDisappearTmpBuf = { => let onDisappearTmpBufOptBufArgsSerializer: SerializerBase = SerializerBase.hold();
onDisappearTmpBufOptBufArgsSerializer.writeInt32(onDisappearTmpBufOptBufResource.resourceId);
onDisappearTmpBufOptBufArgsSerializer.writePointer(onDisappearTmpBufOptBufCall);
onDisappearTmpBufOptBufArgsSerializer.writePointer(onDisappearTmpBufOptBufCallSync);
InteropNativeModule._CallCallbackSync(10, 1743390416, onDisappearTmpBufOptBufArgsSerializer.asBuffer(), onDisappearTmpBufOptBufArgsSerializer.length());
onDisappearTmpBufOptBufArgsSerializer.release();
return; }
        }
        let onDisappearTmpResult: Option<(() -> Unit)> = onDisappearTmpBuf
        let onWillAppearTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onWillAppearTmpBuf: Option<(() -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onWillAppearTmpBuf_runtimeType))) {
            let onWillAppearTmpBufOptBufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onWillAppearTmpBufOptBufCall: UInt64 = valueDeserializer.readPointer()
            let onWillAppearTmpBufOptBufCallSync: UInt64 = valueDeserializer.readPointer()
            onWillAppearTmpBuf = { => let onWillAppearTmpBufOptBufArgsSerializer: SerializerBase = SerializerBase.hold();
onWillAppearTmpBufOptBufArgsSerializer.writeInt32(onWillAppearTmpBufOptBufResource.resourceId);
onWillAppearTmpBufOptBufArgsSerializer.writePointer(onWillAppearTmpBufOptBufCall);
onWillAppearTmpBufOptBufArgsSerializer.writePointer(onWillAppearTmpBufOptBufCallSync);
InteropNativeModule._CallCallbackSync(10, 1743390416, onWillAppearTmpBufOptBufArgsSerializer.asBuffer(), onWillAppearTmpBufOptBufArgsSerializer.length());
onWillAppearTmpBufOptBufArgsSerializer.release();
return; }
        }
        let onWillAppearTmpResult: Option<(() -> Unit)> = onWillAppearTmpBuf
        let onWillDisappearTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onWillDisappearTmpBuf: Option<(() -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onWillDisappearTmpBuf_runtimeType))) {
            let onWillDisappearTmpBufOptBufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onWillDisappearTmpBufOptBufCall: UInt64 = valueDeserializer.readPointer()
            let onWillDisappearTmpBufOptBufCallSync: UInt64 = valueDeserializer.readPointer()
            onWillDisappearTmpBuf = { => let onWillDisappearTmpBufOptBufArgsSerializer: SerializerBase = SerializerBase.hold();
onWillDisappearTmpBufOptBufArgsSerializer.writeInt32(onWillDisappearTmpBufOptBufResource.resourceId);
onWillDisappearTmpBufOptBufArgsSerializer.writePointer(onWillDisappearTmpBufOptBufCall);
onWillDisappearTmpBufOptBufArgsSerializer.writePointer(onWillDisappearTmpBufOptBufCallSync);
InteropNativeModule._CallCallbackSync(10, 1743390416, onWillDisappearTmpBufOptBufArgsSerializer.asBuffer(), onWillDisappearTmpBufOptBufArgsSerializer.length());
onWillDisappearTmpBufOptBufArgsSerializer.release();
return; }
        }
        let onWillDisappearTmpResult: Option<(() -> Unit)> = onWillDisappearTmpBuf
        let heightTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var heightTmpBuf: Option<Union_SheetSize_Length> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(heightTmpBuf_runtimeType))) {
            let heightTmpBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var heightTmpBufOpt: Union_SheetSize_Length 
            if (heightTmpBufOptUnionSelector == Int8(0)) {
                heightTmpBufOpt = Union_SheetSize_Length(SheetSize(valueDeserializer.readInt32()))
            } else if (heightTmpBufOptUnionSelector == Int8(1)) {
                let heightTmpBufOptBufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var heightTmpBufOptBufU: Union_String_Number_Resource 
                if (heightTmpBufOptBufUUnionSelector == Int8(0)) {
                    heightTmpBufOptBufU = Union_String_Number_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (heightTmpBufOptBufUUnionSelector == Int8(1)) {
                    heightTmpBufOptBufU = Union_String_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (heightTmpBufOptBufUUnionSelector == Int8(2)) {
                    heightTmpBufOptBufU = Union_String_Number_Resource(global_resource_Resource_serializer.read(valueDeserializer))
                } else {
                    throw Exception("One of the branches for heightTmpBufOptBufU has to be chosen through deserialisation.")
                }
                heightTmpBufOpt = Union_SheetSize_Length(match (heightTmpBufOptBufU as Union_String_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for heightTmpBufOpt has to be chosen through deserialisation.")
            }
            heightTmpBuf = match (heightTmpBufOpt as Union_SheetSize_Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let heightTmpResult: Option<Union_SheetSize_Length> = heightTmpBuf
        let dragBarTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var dragBarTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(dragBarTmpBuf_runtimeType))) {
            dragBarTmpBuf = valueDeserializer.readBoolean()
        }
        let dragBarTmpResult: Option<Bool> = dragBarTmpBuf
        let maskColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var maskColorTmpBuf: Option<ResourceColor> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(maskColorTmpBuf_runtimeType))) {
            let maskColorTmpBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var maskColorTmpBufOpt: Union_Color_Number_String_Resource 
            if (maskColorTmpBufOptUnionSelector == Int8(0)) {
                maskColorTmpBufOpt = Union_Color_Number_String_Resource(Color(valueDeserializer.readInt32()))
            } else if (maskColorTmpBufOptUnionSelector == Int8(1)) {
                maskColorTmpBufOpt = Union_Color_Number_String_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (maskColorTmpBufOptUnionSelector == Int8(2)) {
                maskColorTmpBufOpt = Union_Color_Number_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (maskColorTmpBufOptUnionSelector == Int8(3)) {
                maskColorTmpBufOpt = Union_Color_Number_String_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for maskColorTmpBufOpt has to be chosen through deserialisation.")
            }
            maskColorTmpBuf = match (maskColorTmpBufOpt as Union_Color_Number_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let maskColorTmpResult: Option<ResourceColor> = maskColorTmpBuf
        let detentsTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var detentsTmpBuf: Option<Type_SheetOptions_detents> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(detentsTmpBuf_runtimeType))) {
            let detentsTmpBufOptValue0TempBufUnionSelector: Int8 = valueDeserializer.readInt8()
            var detentsTmpBufOptValue0TempBuf: Union_SheetSize_Length 
            if (detentsTmpBufOptValue0TempBufUnionSelector == Int8(0)) {
                detentsTmpBufOptValue0TempBuf = Union_SheetSize_Length(SheetSize(valueDeserializer.readInt32()))
            } else if (detentsTmpBufOptValue0TempBufUnionSelector == Int8(1)) {
                let detentsTmpBufOptValue0TempBufBufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var detentsTmpBufOptValue0TempBufBufU: Union_String_Number_Resource 
                if (detentsTmpBufOptValue0TempBufBufUUnionSelector == Int8(0)) {
                    detentsTmpBufOptValue0TempBufBufU = Union_String_Number_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (detentsTmpBufOptValue0TempBufBufUUnionSelector == Int8(1)) {
                    detentsTmpBufOptValue0TempBufBufU = Union_String_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (detentsTmpBufOptValue0TempBufBufUUnionSelector == Int8(2)) {
                    detentsTmpBufOptValue0TempBufBufU = Union_String_Number_Resource(global_resource_Resource_serializer.read(valueDeserializer))
                } else {
                    throw Exception("One of the branches for detentsTmpBufOptValue0TempBufBufU has to be chosen through deserialisation.")
                }
                detentsTmpBufOptValue0TempBuf = Union_SheetSize_Length(match (detentsTmpBufOptValue0TempBufBufU as Union_String_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else {
                throw Exception("One of the branches for detentsTmpBufOptValue0TempBuf has to be chosen through deserialisation.")
            }
            let detentsTmpBufOptValue0: Union_SheetSize_Length = match (detentsTmpBufOptValue0TempBuf as Union_SheetSize_Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            let detentsTmpBufOptValue1TempBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            var detentsTmpBufOptValue1TempBuf: Option<Union_SheetSize_Length> = Option.None
            if ((RuntimeType.UNDEFINED.ordinal) != (Int32(detentsTmpBufOptValue1TempBuf_runtimeType))) {
                let detentsTmpBufOptValue1TempBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
                var detentsTmpBufOptValue1TempBufOpt: Union_SheetSize_Length 
                if (detentsTmpBufOptValue1TempBufOptUnionSelector == Int8(0)) {
                    detentsTmpBufOptValue1TempBufOpt = Union_SheetSize_Length(SheetSize(valueDeserializer.readInt32()))
                } else if (detentsTmpBufOptValue1TempBufOptUnionSelector == Int8(1)) {
                    let detentsTmpBufOptValue1TempBufOptBufUUnionSelector: Int8 = valueDeserializer.readInt8()
                    var detentsTmpBufOptValue1TempBufOptBufU: Union_String_Number_Resource 
                    if (detentsTmpBufOptValue1TempBufOptBufUUnionSelector == Int8(0)) {
                        detentsTmpBufOptValue1TempBufOptBufU = Union_String_Number_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else if (detentsTmpBufOptValue1TempBufOptBufUUnionSelector == Int8(1)) {
                        detentsTmpBufOptValue1TempBufOptBufU = Union_String_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else if (detentsTmpBufOptValue1TempBufOptBufUUnionSelector == Int8(2)) {
                        detentsTmpBufOptValue1TempBufOptBufU = Union_String_Number_Resource(global_resource_Resource_serializer.read(valueDeserializer))
                    } else {
                        throw Exception("One of the branches for detentsTmpBufOptValue1TempBufOptBufU has to be chosen through deserialisation.")
                    }
                    detentsTmpBufOptValue1TempBufOpt = Union_SheetSize_Length(match (detentsTmpBufOptValue1TempBufOptBufU as Union_String_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for detentsTmpBufOptValue1TempBufOpt has to be chosen through deserialisation.")
                }
                detentsTmpBufOptValue1TempBuf = match (detentsTmpBufOptValue1TempBufOpt as Union_SheetSize_Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            }
            let detentsTmpBufOptValue1: Option<Union_SheetSize_Length> = detentsTmpBufOptValue1TempBuf
            let detentsTmpBufOptValue2TempBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            var detentsTmpBufOptValue2TempBuf: Option<Union_SheetSize_Length> = Option.None
            if ((RuntimeType.UNDEFINED.ordinal) != (Int32(detentsTmpBufOptValue2TempBuf_runtimeType))) {
                let detentsTmpBufOptValue2TempBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
                var detentsTmpBufOptValue2TempBufOpt: Union_SheetSize_Length 
                if (detentsTmpBufOptValue2TempBufOptUnionSelector == Int8(0)) {
                    detentsTmpBufOptValue2TempBufOpt = Union_SheetSize_Length(SheetSize(valueDeserializer.readInt32()))
                } else if (detentsTmpBufOptValue2TempBufOptUnionSelector == Int8(1)) {
                    let detentsTmpBufOptValue2TempBufOptBufUUnionSelector: Int8 = valueDeserializer.readInt8()
                    var detentsTmpBufOptValue2TempBufOptBufU: Union_String_Number_Resource 
                    if (detentsTmpBufOptValue2TempBufOptBufUUnionSelector == Int8(0)) {
                        detentsTmpBufOptValue2TempBufOptBufU = Union_String_Number_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else if (detentsTmpBufOptValue2TempBufOptBufUUnionSelector == Int8(1)) {
                        detentsTmpBufOptValue2TempBufOptBufU = Union_String_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else if (detentsTmpBufOptValue2TempBufOptBufUUnionSelector == Int8(2)) {
                        detentsTmpBufOptValue2TempBufOptBufU = Union_String_Number_Resource(global_resource_Resource_serializer.read(valueDeserializer))
                    } else {
                        throw Exception("One of the branches for detentsTmpBufOptValue2TempBufOptBufU has to be chosen through deserialisation.")
                    }
                    detentsTmpBufOptValue2TempBufOpt = Union_SheetSize_Length(match (detentsTmpBufOptValue2TempBufOptBufU as Union_String_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else {
                    throw Exception("One of the branches for detentsTmpBufOptValue2TempBufOpt has to be chosen through deserialisation.")
                }
                detentsTmpBufOptValue2TempBuf = match (detentsTmpBufOptValue2TempBufOpt as Union_SheetSize_Length) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
            }
            let detentsTmpBufOptValue2: Option<Union_SheetSize_Length> = detentsTmpBufOptValue2TempBuf
            detentsTmpBuf = Type_SheetOptions_detents(detentsTmpBufOptValue0, detentsTmpBufOptValue1, detentsTmpBufOptValue2)
        }
        let detentsTmpResult: Option<Type_SheetOptions_detents> = detentsTmpBuf
        let blurStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var blurStyleTmpBuf: Option<BlurStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(blurStyleTmpBuf_runtimeType))) {
            blurStyleTmpBuf = BlurStyle(valueDeserializer.readInt32())
        }
        let blurStyleTmpResult: Option<BlurStyle> = blurStyleTmpBuf
        let showCloseTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var showCloseTmpBuf: Option<Union_Boolean_Resource> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(showCloseTmpBuf_runtimeType))) {
            let showCloseTmpBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var showCloseTmpBufOpt: Union_Boolean_Resource 
            if (showCloseTmpBufOptUnionSelector == Int8(0)) {
                showCloseTmpBufOpt = Union_Boolean_Resource(valueDeserializer.readBoolean())
            } else if (showCloseTmpBufOptUnionSelector == Int8(1)) {
                showCloseTmpBufOpt = Union_Boolean_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for showCloseTmpBufOpt has to be chosen through deserialisation.")
            }
            showCloseTmpBuf = match (showCloseTmpBufOpt as Union_Boolean_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let showCloseTmpResult: Option<Union_Boolean_Resource> = showCloseTmpBuf
        let preferTypeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var preferTypeTmpBuf: Option<SheetType> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(preferTypeTmpBuf_runtimeType))) {
            preferTypeTmpBuf = SheetType(valueDeserializer.readInt32())
        }
        let preferTypeTmpResult: Option<SheetType> = preferTypeTmpBuf
        let titleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var titleTmpBuf: Option<Union_SheetTitleOptions_CustomBuilder> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(titleTmpBuf_runtimeType))) {
            let titleTmpBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var titleTmpBufOpt: Union_SheetTitleOptions_CustomBuilder 
            if (titleTmpBufOptUnionSelector == Int8(0)) {
                titleTmpBufOpt = Union_SheetTitleOptions_CustomBuilder(SheetTitleOptions_serializer.read(valueDeserializer))
            } else if (titleTmpBufOptUnionSelector == Int8(1)) {
                let titleTmpBufOptBufUBufResource: CallbackResource = valueDeserializer.readCallbackResource()
                let titleTmpBufOptBufUBufCall: UInt64 = valueDeserializer.readPointer()
                let titleTmpBufOptBufUBufCallSync: UInt64 = valueDeserializer.readPointer()
                titleTmpBufOpt = Union_SheetTitleOptions_CustomBuilder({ => let titleTmpBufOptBufUBufArgsSerializer: SerializerBase = SerializerBase.hold();
titleTmpBufOptBufUBufArgsSerializer.writeInt32(titleTmpBufOptBufUBufResource.resourceId);
titleTmpBufOptBufUBufArgsSerializer.writePointer(titleTmpBufOptBufUBufCall);
titleTmpBufOptBufUBufArgsSerializer.writePointer(titleTmpBufOptBufUBufCallSync);
InteropNativeModule._CallCallbackSync(10, -1834072896, titleTmpBufOptBufUBufArgsSerializer.asBuffer(), titleTmpBufOptBufUBufArgsSerializer.length());
titleTmpBufOptBufUBufArgsSerializer.release();
return; })
            } else {
                throw Exception("One of the branches for titleTmpBufOpt has to be chosen through deserialisation.")
            }
            titleTmpBuf = match (titleTmpBufOpt as Union_SheetTitleOptions_CustomBuilder) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let titleTmpResult: Option<Union_SheetTitleOptions_CustomBuilder> = titleTmpBuf
        let shouldDismissTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var shouldDismissTmpBuf: Option<((sheetDismiss: SheetDismiss) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(shouldDismissTmpBuf_runtimeType))) {
            let shouldDismissTmpBufOptBufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let shouldDismissTmpBufOptBufCall: UInt64 = valueDeserializer.readPointer()
            let shouldDismissTmpBufOptBufCallSync: UInt64 = valueDeserializer.readPointer()
            shouldDismissTmpBuf = {sheetDismiss: SheetDismiss => let shouldDismissTmpBufOptBufArgsSerializer: SerializerBase = SerializerBase.hold();
shouldDismissTmpBufOptBufArgsSerializer.writeInt32(shouldDismissTmpBufOptBufResource.resourceId);
shouldDismissTmpBufOptBufArgsSerializer.writePointer(shouldDismissTmpBufOptBufCall);
shouldDismissTmpBufOptBufArgsSerializer.writePointer(shouldDismissTmpBufOptBufCallSync);
SheetDismiss_serializer.write(shouldDismissTmpBufOptBufArgsSerializer, sheetDismiss);
InteropNativeModule._CallCallbackSync(10, -565675366, shouldDismissTmpBufOptBufArgsSerializer.asBuffer(), shouldDismissTmpBufOptBufArgsSerializer.length());
shouldDismissTmpBufOptBufArgsSerializer.release();
return; }
        }
        let shouldDismissTmpResult: Option<((sheetDismiss: SheetDismiss) -> Unit)> = shouldDismissTmpBuf
        let onWillDismissTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onWillDismissTmpBuf: Option<Callback_DismissSheetAction_Void> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onWillDismissTmpBuf_runtimeType))) {
            let onWillDismissTmpBufOptBufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onWillDismissTmpBufOptBufCall: UInt64 = valueDeserializer.readPointer()
            let onWillDismissTmpBufOptBufCallSync: UInt64 = valueDeserializer.readPointer()
            onWillDismissTmpBuf = {data: DismissSheetAction => let onWillDismissTmpBufOptBufArgsSerializer: SerializerBase = SerializerBase.hold();
onWillDismissTmpBufOptBufArgsSerializer.writeInt32(onWillDismissTmpBufOptBufResource.resourceId);
onWillDismissTmpBufOptBufArgsSerializer.writePointer(onWillDismissTmpBufOptBufCall);
onWillDismissTmpBufOptBufArgsSerializer.writePointer(onWillDismissTmpBufOptBufCallSync);
DismissSheetAction_serializer.write(onWillDismissTmpBufOptBufArgsSerializer, data);
InteropNativeModule._CallCallbackSync(10, -220072348, onWillDismissTmpBufOptBufArgsSerializer.asBuffer(), onWillDismissTmpBufOptBufArgsSerializer.length());
onWillDismissTmpBufOptBufArgsSerializer.release();
return; }
        }
        let onWillDismissTmpResult: Option<Callback_DismissSheetAction_Void> = onWillDismissTmpBuf
        let onWillSpringBackWhenDismissTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onWillSpringBackWhenDismissTmpBuf: Option<Callback_SpringBackAction_Void> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onWillSpringBackWhenDismissTmpBuf_runtimeType))) {
            let onWillSpringBackWhenDismissTmpBufOptBufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onWillSpringBackWhenDismissTmpBufOptBufCall: UInt64 = valueDeserializer.readPointer()
            let onWillSpringBackWhenDismissTmpBufOptBufCallSync: UInt64 = valueDeserializer.readPointer()
            onWillSpringBackWhenDismissTmpBuf = {data: SpringBackAction => let onWillSpringBackWhenDismissTmpBufOptBufArgsSerializer: SerializerBase = SerializerBase.hold();
onWillSpringBackWhenDismissTmpBufOptBufArgsSerializer.writeInt32(onWillSpringBackWhenDismissTmpBufOptBufResource.resourceId);
onWillSpringBackWhenDismissTmpBufOptBufArgsSerializer.writePointer(onWillSpringBackWhenDismissTmpBufOptBufCall);
onWillSpringBackWhenDismissTmpBufOptBufArgsSerializer.writePointer(onWillSpringBackWhenDismissTmpBufOptBufCallSync);
SpringBackAction_serializer.write(onWillSpringBackWhenDismissTmpBufOptBufArgsSerializer, data);
InteropNativeModule._CallCallbackSync(10, -2101912629, onWillSpringBackWhenDismissTmpBufOptBufArgsSerializer.asBuffer(), onWillSpringBackWhenDismissTmpBufOptBufArgsSerializer.length());
onWillSpringBackWhenDismissTmpBufOptBufArgsSerializer.release();
return; }
        }
        let onWillSpringBackWhenDismissTmpResult: Option<Callback_SpringBackAction_Void> = onWillSpringBackWhenDismissTmpBuf
        let enableOutsideInteractiveTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enableOutsideInteractiveTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enableOutsideInteractiveTmpBuf_runtimeType))) {
            enableOutsideInteractiveTmpBuf = valueDeserializer.readBoolean()
        }
        let enableOutsideInteractiveTmpResult: Option<Bool> = enableOutsideInteractiveTmpBuf
        let widthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var widthTmpBuf: Option<Dimension> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(widthTmpBuf_runtimeType))) {
            let widthTmpBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var widthTmpBufOpt: Union_String_Number_Resource 
            if (widthTmpBufOptUnionSelector == Int8(0)) {
                widthTmpBufOpt = Union_String_Number_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (widthTmpBufOptUnionSelector == Int8(1)) {
                widthTmpBufOpt = Union_String_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (widthTmpBufOptUnionSelector == Int8(2)) {
                widthTmpBufOpt = Union_String_Number_Resource(global_resource_Resource_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for widthTmpBufOpt has to be chosen through deserialisation.")
            }
            widthTmpBuf = match (widthTmpBufOpt as Union_String_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let widthTmpResult: Option<Dimension> = widthTmpBuf
        let borderWidthTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var borderWidthTmpBuf: Option<Union_Dimension_EdgeWidths_LocalizedEdgeWidths> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderWidthTmpBuf_runtimeType))) {
            let borderWidthTmpBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var borderWidthTmpBufOpt: Union_Dimension_EdgeWidths_LocalizedEdgeWidths 
            if (borderWidthTmpBufOptUnionSelector == Int8(0)) {
                let borderWidthTmpBufOptBufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var borderWidthTmpBufOptBufU: Union_String_Number_Resource 
                if (borderWidthTmpBufOptBufUUnionSelector == Int8(0)) {
                    borderWidthTmpBufOptBufU = Union_String_Number_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (borderWidthTmpBufOptBufUUnionSelector == Int8(1)) {
                    borderWidthTmpBufOptBufU = Union_String_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (borderWidthTmpBufOptBufUUnionSelector == Int8(2)) {
                    borderWidthTmpBufOptBufU = Union_String_Number_Resource(global_resource_Resource_serializer.read(valueDeserializer))
                } else {
                    throw Exception("One of the branches for borderWidthTmpBufOptBufU has to be chosen through deserialisation.")
                }
                borderWidthTmpBufOpt = Union_Dimension_EdgeWidths_LocalizedEdgeWidths(match (borderWidthTmpBufOptBufU as Union_String_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderWidthTmpBufOptUnionSelector == Int8(1)) {
                let borderWidthTmpBufOptBufUTopTempBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                var borderWidthTmpBufOptBufUTopTempBuf: Option<Length> = Option.None
                if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderWidthTmpBufOptBufUTopTempBuf_runtimeType))) {
                    let borderWidthTmpBufOptBufUTopTempBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
                    var borderWidthTmpBufOptBufUTopTempBufOpt: Union_String_Number_Resource 
                    if (borderWidthTmpBufOptBufUTopTempBufOptUnionSelector == Int8(0)) {
                        borderWidthTmpBufOptBufUTopTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else if (borderWidthTmpBufOptBufUTopTempBufOptUnionSelector == Int8(1)) {
                        borderWidthTmpBufOptBufUTopTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else if (borderWidthTmpBufOptBufUTopTempBufOptUnionSelector == Int8(2)) {
                        borderWidthTmpBufOptBufUTopTempBufOpt = Union_String_Number_Resource(global_resource_Resource_serializer.read(valueDeserializer))
                    } else {
                        throw Exception("One of the branches for borderWidthTmpBufOptBufUTopTempBufOpt has to be chosen through deserialisation.")
                    }
                    borderWidthTmpBufOptBufUTopTempBuf = match (borderWidthTmpBufOptBufUTopTempBufOpt as Union_String_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                }
                let borderWidthTmpBufOptBufUTop: Option<Length> = borderWidthTmpBufOptBufUTopTempBuf
                let borderWidthTmpBufOptBufURightTempBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                var borderWidthTmpBufOptBufURightTempBuf: Option<Length> = Option.None
                if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderWidthTmpBufOptBufURightTempBuf_runtimeType))) {
                    let borderWidthTmpBufOptBufURightTempBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
                    var borderWidthTmpBufOptBufURightTempBufOpt: Union_String_Number_Resource 
                    if (borderWidthTmpBufOptBufURightTempBufOptUnionSelector == Int8(0)) {
                        borderWidthTmpBufOptBufURightTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else if (borderWidthTmpBufOptBufURightTempBufOptUnionSelector == Int8(1)) {
                        borderWidthTmpBufOptBufURightTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else if (borderWidthTmpBufOptBufURightTempBufOptUnionSelector == Int8(2)) {
                        borderWidthTmpBufOptBufURightTempBufOpt = Union_String_Number_Resource(global_resource_Resource_serializer.read(valueDeserializer))
                    } else {
                        throw Exception("One of the branches for borderWidthTmpBufOptBufURightTempBufOpt has to be chosen through deserialisation.")
                    }
                    borderWidthTmpBufOptBufURightTempBuf = match (borderWidthTmpBufOptBufURightTempBufOpt as Union_String_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                }
                let borderWidthTmpBufOptBufURight: Option<Length> = borderWidthTmpBufOptBufURightTempBuf
                let borderWidthTmpBufOptBufUBottomTempBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                var borderWidthTmpBufOptBufUBottomTempBuf: Option<Length> = Option.None
                if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderWidthTmpBufOptBufUBottomTempBuf_runtimeType))) {
                    let borderWidthTmpBufOptBufUBottomTempBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
                    var borderWidthTmpBufOptBufUBottomTempBufOpt: Union_String_Number_Resource 
                    if (borderWidthTmpBufOptBufUBottomTempBufOptUnionSelector == Int8(0)) {
                        borderWidthTmpBufOptBufUBottomTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else if (borderWidthTmpBufOptBufUBottomTempBufOptUnionSelector == Int8(1)) {
                        borderWidthTmpBufOptBufUBottomTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else if (borderWidthTmpBufOptBufUBottomTempBufOptUnionSelector == Int8(2)) {
                        borderWidthTmpBufOptBufUBottomTempBufOpt = Union_String_Number_Resource(global_resource_Resource_serializer.read(valueDeserializer))
                    } else {
                        throw Exception("One of the branches for borderWidthTmpBufOptBufUBottomTempBufOpt has to be chosen through deserialisation.")
                    }
                    borderWidthTmpBufOptBufUBottomTempBuf = match (borderWidthTmpBufOptBufUBottomTempBufOpt as Union_String_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                }
                let borderWidthTmpBufOptBufUBottom: Option<Length> = borderWidthTmpBufOptBufUBottomTempBuf
                let borderWidthTmpBufOptBufULeftTempBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                var borderWidthTmpBufOptBufULeftTempBuf: Option<Length> = Option.None
                if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderWidthTmpBufOptBufULeftTempBuf_runtimeType))) {
                    let borderWidthTmpBufOptBufULeftTempBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
                    var borderWidthTmpBufOptBufULeftTempBufOpt: Union_String_Number_Resource 
                    if (borderWidthTmpBufOptBufULeftTempBufOptUnionSelector == Int8(0)) {
                        borderWidthTmpBufOptBufULeftTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else if (borderWidthTmpBufOptBufULeftTempBufOptUnionSelector == Int8(1)) {
                        borderWidthTmpBufOptBufULeftTempBufOpt = Union_String_Number_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else if (borderWidthTmpBufOptBufULeftTempBufOptUnionSelector == Int8(2)) {
                        borderWidthTmpBufOptBufULeftTempBufOpt = Union_String_Number_Resource(global_resource_Resource_serializer.read(valueDeserializer))
                    } else {
                        throw Exception("One of the branches for borderWidthTmpBufOptBufULeftTempBufOpt has to be chosen through deserialisation.")
                    }
                    borderWidthTmpBufOptBufULeftTempBuf = match (borderWidthTmpBufOptBufULeftTempBufOpt as Union_String_Number_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                }
                let borderWidthTmpBufOptBufULeft: Option<Length> = borderWidthTmpBufOptBufULeftTempBuf
                borderWidthTmpBufOpt = Union_Dimension_EdgeWidths_LocalizedEdgeWidths(EdgeWidths(borderWidthTmpBufOptBufUTop, borderWidthTmpBufOptBufURight, borderWidthTmpBufOptBufUBottom, borderWidthTmpBufOptBufULeft))
            } else if (borderWidthTmpBufOptUnionSelector == Int8(2)) {
                borderWidthTmpBufOpt = Union_Dimension_EdgeWidths_LocalizedEdgeWidths(LocalizedEdgeWidths_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for borderWidthTmpBufOpt has to be chosen through deserialisation.")
            }
            borderWidthTmpBuf = match (borderWidthTmpBufOpt as Union_Dimension_EdgeWidths_LocalizedEdgeWidths) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let borderWidthTmpResult: Option<Union_Dimension_EdgeWidths_LocalizedEdgeWidths> = borderWidthTmpBuf
        let borderColorTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var borderColorTmpBuf: Option<Union_ResourceColor_EdgeColors_LocalizedEdgeColors> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderColorTmpBuf_runtimeType))) {
            let borderColorTmpBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var borderColorTmpBufOpt: Union_ResourceColor_EdgeColors_LocalizedEdgeColors 
            if (borderColorTmpBufOptUnionSelector == Int8(0)) {
                let borderColorTmpBufOptBufUUnionSelector: Int8 = valueDeserializer.readInt8()
                var borderColorTmpBufOptBufU: Union_Color_Number_String_Resource 
                if (borderColorTmpBufOptBufUUnionSelector == Int8(0)) {
                    borderColorTmpBufOptBufU = Union_Color_Number_String_Resource(Color(valueDeserializer.readInt32()))
                } else if (borderColorTmpBufOptBufUUnionSelector == Int8(1)) {
                    borderColorTmpBufOptBufU = Union_Color_Number_String_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (borderColorTmpBufOptBufUUnionSelector == Int8(2)) {
                    borderColorTmpBufOptBufU = Union_Color_Number_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                } else if (borderColorTmpBufOptBufUUnionSelector == Int8(3)) {
                    borderColorTmpBufOptBufU = Union_Color_Number_String_Resource(global_resource_Resource_serializer.read(valueDeserializer))
                } else {
                    throw Exception("One of the branches for borderColorTmpBufOptBufU has to be chosen through deserialisation.")
                }
                borderColorTmpBufOpt = Union_ResourceColor_EdgeColors_LocalizedEdgeColors(match (borderColorTmpBufOptBufU as Union_Color_Number_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
            } else if (borderColorTmpBufOptUnionSelector == Int8(1)) {
                let borderColorTmpBufOptBufUTopTempBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                var borderColorTmpBufOptBufUTopTempBuf: Option<ResourceColor> = Option.None
                if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderColorTmpBufOptBufUTopTempBuf_runtimeType))) {
                    let borderColorTmpBufOptBufUTopTempBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
                    var borderColorTmpBufOptBufUTopTempBufOpt: Union_Color_Number_String_Resource 
                    if (borderColorTmpBufOptBufUTopTempBufOptUnionSelector == Int8(0)) {
                        borderColorTmpBufOptBufUTopTempBufOpt = Union_Color_Number_String_Resource(Color(valueDeserializer.readInt32()))
                    } else if (borderColorTmpBufOptBufUTopTempBufOptUnionSelector == Int8(1)) {
                        borderColorTmpBufOptBufUTopTempBufOpt = Union_Color_Number_String_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else if (borderColorTmpBufOptBufUTopTempBufOptUnionSelector == Int8(2)) {
                        borderColorTmpBufOptBufUTopTempBufOpt = Union_Color_Number_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else if (borderColorTmpBufOptBufUTopTempBufOptUnionSelector == Int8(3)) {
                        borderColorTmpBufOptBufUTopTempBufOpt = Union_Color_Number_String_Resource(global_resource_Resource_serializer.read(valueDeserializer))
                    } else {
                        throw Exception("One of the branches for borderColorTmpBufOptBufUTopTempBufOpt has to be chosen through deserialisation.")
                    }
                    borderColorTmpBufOptBufUTopTempBuf = match (borderColorTmpBufOptBufUTopTempBufOpt as Union_Color_Number_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                }
                let borderColorTmpBufOptBufUTop: Option<ResourceColor> = borderColorTmpBufOptBufUTopTempBuf
                let borderColorTmpBufOptBufURightTempBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                var borderColorTmpBufOptBufURightTempBuf: Option<ResourceColor> = Option.None
                if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderColorTmpBufOptBufURightTempBuf_runtimeType))) {
                    let borderColorTmpBufOptBufURightTempBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
                    var borderColorTmpBufOptBufURightTempBufOpt: Union_Color_Number_String_Resource 
                    if (borderColorTmpBufOptBufURightTempBufOptUnionSelector == Int8(0)) {
                        borderColorTmpBufOptBufURightTempBufOpt = Union_Color_Number_String_Resource(Color(valueDeserializer.readInt32()))
                    } else if (borderColorTmpBufOptBufURightTempBufOptUnionSelector == Int8(1)) {
                        borderColorTmpBufOptBufURightTempBufOpt = Union_Color_Number_String_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else if (borderColorTmpBufOptBufURightTempBufOptUnionSelector == Int8(2)) {
                        borderColorTmpBufOptBufURightTempBufOpt = Union_Color_Number_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else if (borderColorTmpBufOptBufURightTempBufOptUnionSelector == Int8(3)) {
                        borderColorTmpBufOptBufURightTempBufOpt = Union_Color_Number_String_Resource(global_resource_Resource_serializer.read(valueDeserializer))
                    } else {
                        throw Exception("One of the branches for borderColorTmpBufOptBufURightTempBufOpt has to be chosen through deserialisation.")
                    }
                    borderColorTmpBufOptBufURightTempBuf = match (borderColorTmpBufOptBufURightTempBufOpt as Union_Color_Number_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                }
                let borderColorTmpBufOptBufURight: Option<ResourceColor> = borderColorTmpBufOptBufURightTempBuf
                let borderColorTmpBufOptBufUBottomTempBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                var borderColorTmpBufOptBufUBottomTempBuf: Option<ResourceColor> = Option.None
                if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderColorTmpBufOptBufUBottomTempBuf_runtimeType))) {
                    let borderColorTmpBufOptBufUBottomTempBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
                    var borderColorTmpBufOptBufUBottomTempBufOpt: Union_Color_Number_String_Resource 
                    if (borderColorTmpBufOptBufUBottomTempBufOptUnionSelector == Int8(0)) {
                        borderColorTmpBufOptBufUBottomTempBufOpt = Union_Color_Number_String_Resource(Color(valueDeserializer.readInt32()))
                    } else if (borderColorTmpBufOptBufUBottomTempBufOptUnionSelector == Int8(1)) {
                        borderColorTmpBufOptBufUBottomTempBufOpt = Union_Color_Number_String_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else if (borderColorTmpBufOptBufUBottomTempBufOptUnionSelector == Int8(2)) {
                        borderColorTmpBufOptBufUBottomTempBufOpt = Union_Color_Number_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else if (borderColorTmpBufOptBufUBottomTempBufOptUnionSelector == Int8(3)) {
                        borderColorTmpBufOptBufUBottomTempBufOpt = Union_Color_Number_String_Resource(global_resource_Resource_serializer.read(valueDeserializer))
                    } else {
                        throw Exception("One of the branches for borderColorTmpBufOptBufUBottomTempBufOpt has to be chosen through deserialisation.")
                    }
                    borderColorTmpBufOptBufUBottomTempBuf = match (borderColorTmpBufOptBufUBottomTempBufOpt as Union_Color_Number_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                }
                let borderColorTmpBufOptBufUBottom: Option<ResourceColor> = borderColorTmpBufOptBufUBottomTempBuf
                let borderColorTmpBufOptBufULeftTempBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                var borderColorTmpBufOptBufULeftTempBuf: Option<ResourceColor> = Option.None
                if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderColorTmpBufOptBufULeftTempBuf_runtimeType))) {
                    let borderColorTmpBufOptBufULeftTempBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
                    var borderColorTmpBufOptBufULeftTempBufOpt: Union_Color_Number_String_Resource 
                    if (borderColorTmpBufOptBufULeftTempBufOptUnionSelector == Int8(0)) {
                        borderColorTmpBufOptBufULeftTempBufOpt = Union_Color_Number_String_Resource(Color(valueDeserializer.readInt32()))
                    } else if (borderColorTmpBufOptBufULeftTempBufOptUnionSelector == Int8(1)) {
                        borderColorTmpBufOptBufULeftTempBufOpt = Union_Color_Number_String_Resource(match (valueDeserializer.readNumber() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else if (borderColorTmpBufOptBufULeftTempBufOptUnionSelector == Int8(2)) {
                        borderColorTmpBufOptBufULeftTempBufOpt = Union_Color_Number_String_Resource(match (valueDeserializer.readString() as String) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")})
                    } else if (borderColorTmpBufOptBufULeftTempBufOptUnionSelector == Int8(3)) {
                        borderColorTmpBufOptBufULeftTempBufOpt = Union_Color_Number_String_Resource(global_resource_Resource_serializer.read(valueDeserializer))
                    } else {
                        throw Exception("One of the branches for borderColorTmpBufOptBufULeftTempBufOpt has to be chosen through deserialisation.")
                    }
                    borderColorTmpBufOptBufULeftTempBuf = match (borderColorTmpBufOptBufULeftTempBufOpt as Union_Color_Number_String_Resource) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                }
                let borderColorTmpBufOptBufULeft: Option<ResourceColor> = borderColorTmpBufOptBufULeftTempBuf
                borderColorTmpBufOpt = Union_ResourceColor_EdgeColors_LocalizedEdgeColors(EdgeColors(borderColorTmpBufOptBufUTop, borderColorTmpBufOptBufURight, borderColorTmpBufOptBufUBottom, borderColorTmpBufOptBufULeft))
            } else if (borderColorTmpBufOptUnionSelector == Int8(2)) {
                borderColorTmpBufOpt = Union_ResourceColor_EdgeColors_LocalizedEdgeColors(LocalizedEdgeColors_serializer.read(valueDeserializer))
            } else {
                throw Exception("One of the branches for borderColorTmpBufOpt has to be chosen through deserialisation.")
            }
            borderColorTmpBuf = match (borderColorTmpBufOpt as Union_ResourceColor_EdgeColors_LocalizedEdgeColors) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let borderColorTmpResult: Option<Union_ResourceColor_EdgeColors_LocalizedEdgeColors> = borderColorTmpBuf
        let borderStyleTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var borderStyleTmpBuf: Option<Union_BorderStyle_EdgeStyles> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderStyleTmpBuf_runtimeType))) {
            let borderStyleTmpBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var borderStyleTmpBufOpt: Union_BorderStyle_EdgeStyles 
            if (borderStyleTmpBufOptUnionSelector == Int8(0)) {
                borderStyleTmpBufOpt = Union_BorderStyle_EdgeStyles(BorderStyle(valueDeserializer.readInt32()))
            } else if (borderStyleTmpBufOptUnionSelector == Int8(1)) {
                let borderStyleTmpBufOptBufUTopTempBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                var borderStyleTmpBufOptBufUTopTempBuf: Option<BorderStyle> = Option.None
                if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderStyleTmpBufOptBufUTopTempBuf_runtimeType))) {
                    borderStyleTmpBufOptBufUTopTempBuf = BorderStyle(valueDeserializer.readInt32())
                }
                let borderStyleTmpBufOptBufUTop: Option<BorderStyle> = borderStyleTmpBufOptBufUTopTempBuf
                let borderStyleTmpBufOptBufURightTempBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                var borderStyleTmpBufOptBufURightTempBuf: Option<BorderStyle> = Option.None
                if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderStyleTmpBufOptBufURightTempBuf_runtimeType))) {
                    borderStyleTmpBufOptBufURightTempBuf = BorderStyle(valueDeserializer.readInt32())
                }
                let borderStyleTmpBufOptBufURight: Option<BorderStyle> = borderStyleTmpBufOptBufURightTempBuf
                let borderStyleTmpBufOptBufUBottomTempBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                var borderStyleTmpBufOptBufUBottomTempBuf: Option<BorderStyle> = Option.None
                if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderStyleTmpBufOptBufUBottomTempBuf_runtimeType))) {
                    borderStyleTmpBufOptBufUBottomTempBuf = BorderStyle(valueDeserializer.readInt32())
                }
                let borderStyleTmpBufOptBufUBottom: Option<BorderStyle> = borderStyleTmpBufOptBufUBottomTempBuf
                let borderStyleTmpBufOptBufULeftTempBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
                var borderStyleTmpBufOptBufULeftTempBuf: Option<BorderStyle> = Option.None
                if ((RuntimeType.UNDEFINED.ordinal) != (Int32(borderStyleTmpBufOptBufULeftTempBuf_runtimeType))) {
                    borderStyleTmpBufOptBufULeftTempBuf = BorderStyle(valueDeserializer.readInt32())
                }
                let borderStyleTmpBufOptBufULeft: Option<BorderStyle> = borderStyleTmpBufOptBufULeftTempBuf
                borderStyleTmpBufOpt = Union_BorderStyle_EdgeStyles(EdgeStyles(borderStyleTmpBufOptBufUTop, borderStyleTmpBufOptBufURight, borderStyleTmpBufOptBufUBottom, borderStyleTmpBufOptBufULeft))
            } else {
                throw Exception("One of the branches for borderStyleTmpBufOpt has to be chosen through deserialisation.")
            }
            borderStyleTmpBuf = match (borderStyleTmpBufOpt as Union_BorderStyle_EdgeStyles) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let borderStyleTmpResult: Option<Union_BorderStyle_EdgeStyles> = borderStyleTmpBuf
        let shadowTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var shadowTmpBuf: Option<Union_ShadowOptions_ShadowStyle> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(shadowTmpBuf_runtimeType))) {
            let shadowTmpBufOptUnionSelector: Int8 = valueDeserializer.readInt8()
            var shadowTmpBufOpt: Union_ShadowOptions_ShadowStyle 
            if (shadowTmpBufOptUnionSelector == Int8(0)) {
                shadowTmpBufOpt = Union_ShadowOptions_ShadowStyle(ShadowOptions_serializer.read(valueDeserializer))
            } else if (shadowTmpBufOptUnionSelector == Int8(1)) {
                shadowTmpBufOpt = Union_ShadowOptions_ShadowStyle(ShadowStyle(valueDeserializer.readInt32()))
            } else {
                throw Exception("One of the branches for shadowTmpBufOpt has to be chosen through deserialisation.")
            }
            shadowTmpBuf = match (shadowTmpBufOpt as Union_ShadowOptions_ShadowStyle) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let shadowTmpResult: Option<Union_ShadowOptions_ShadowStyle> = shadowTmpBuf
        let onHeightDidChangeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onHeightDidChangeTmpBuf: Option<((selected: Float64) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onHeightDidChangeTmpBuf_runtimeType))) {
            let onHeightDidChangeTmpBufOptBufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onHeightDidChangeTmpBufOptBufCall: UInt64 = valueDeserializer.readPointer()
            let onHeightDidChangeTmpBufOptBufCallSync: UInt64 = valueDeserializer.readPointer()
            onHeightDidChangeTmpBuf = {selected: Float64 => let onHeightDidChangeTmpBufOptBufArgsSerializer: SerializerBase = SerializerBase.hold();
onHeightDidChangeTmpBufOptBufArgsSerializer.writeInt32(onHeightDidChangeTmpBufOptBufResource.resourceId);
onHeightDidChangeTmpBufOptBufArgsSerializer.writePointer(onHeightDidChangeTmpBufOptBufCall);
onHeightDidChangeTmpBufOptBufArgsSerializer.writePointer(onHeightDidChangeTmpBufOptBufCallSync);
onHeightDidChangeTmpBufOptBufArgsSerializer.writeNumber(selected);
InteropNativeModule._CallCallbackSync(10, -1825275412, onHeightDidChangeTmpBufOptBufArgsSerializer.asBuffer(), onHeightDidChangeTmpBufOptBufArgsSerializer.length());
onHeightDidChangeTmpBufOptBufArgsSerializer.release();
return; }
        }
        let onHeightDidChangeTmpResult: Option<((selected: Float64) -> Unit)> = onHeightDidChangeTmpBuf
        let modeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var modeTmpBuf: Option<SheetMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(modeTmpBuf_runtimeType))) {
            modeTmpBuf = SheetMode(valueDeserializer.readInt32())
        }
        let modeTmpResult: Option<SheetMode> = modeTmpBuf
        let scrollSizeModeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var scrollSizeModeTmpBuf: Option<ScrollSizeMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(scrollSizeModeTmpBuf_runtimeType))) {
            scrollSizeModeTmpBuf = ScrollSizeMode(valueDeserializer.readInt32())
        }
        let scrollSizeModeTmpResult: Option<ScrollSizeMode> = scrollSizeModeTmpBuf
        let onDetentsDidChangeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onDetentsDidChangeTmpBuf: Option<((selected: Float64) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onDetentsDidChangeTmpBuf_runtimeType))) {
            let onDetentsDidChangeTmpBufOptBufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onDetentsDidChangeTmpBufOptBufCall: UInt64 = valueDeserializer.readPointer()
            let onDetentsDidChangeTmpBufOptBufCallSync: UInt64 = valueDeserializer.readPointer()
            onDetentsDidChangeTmpBuf = {selected: Float64 => let onDetentsDidChangeTmpBufOptBufArgsSerializer: SerializerBase = SerializerBase.hold();
onDetentsDidChangeTmpBufOptBufArgsSerializer.writeInt32(onDetentsDidChangeTmpBufOptBufResource.resourceId);
onDetentsDidChangeTmpBufOptBufArgsSerializer.writePointer(onDetentsDidChangeTmpBufOptBufCall);
onDetentsDidChangeTmpBufOptBufArgsSerializer.writePointer(onDetentsDidChangeTmpBufOptBufCallSync);
onDetentsDidChangeTmpBufOptBufArgsSerializer.writeNumber(selected);
InteropNativeModule._CallCallbackSync(10, -1825275412, onDetentsDidChangeTmpBufOptBufArgsSerializer.asBuffer(), onDetentsDidChangeTmpBufOptBufArgsSerializer.length());
onDetentsDidChangeTmpBufOptBufArgsSerializer.release();
return; }
        }
        let onDetentsDidChangeTmpResult: Option<((selected: Float64) -> Unit)> = onDetentsDidChangeTmpBuf
        let onWidthDidChangeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onWidthDidChangeTmpBuf: Option<((selected: Float64) -> Unit)> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onWidthDidChangeTmpBuf_runtimeType))) {
            let onWidthDidChangeTmpBufOptBufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onWidthDidChangeTmpBufOptBufCall: UInt64 = valueDeserializer.readPointer()
            let onWidthDidChangeTmpBufOptBufCallSync: UInt64 = valueDeserializer.readPointer()
            onWidthDidChangeTmpBuf = {selected: Float64 => let onWidthDidChangeTmpBufOptBufArgsSerializer: SerializerBase = SerializerBase.hold();
onWidthDidChangeTmpBufOptBufArgsSerializer.writeInt32(onWidthDidChangeTmpBufOptBufResource.resourceId);
onWidthDidChangeTmpBufOptBufArgsSerializer.writePointer(onWidthDidChangeTmpBufOptBufCall);
onWidthDidChangeTmpBufOptBufArgsSerializer.writePointer(onWidthDidChangeTmpBufOptBufCallSync);
onWidthDidChangeTmpBufOptBufArgsSerializer.writeNumber(selected);
InteropNativeModule._CallCallbackSync(10, -1825275412, onWidthDidChangeTmpBufOptBufArgsSerializer.asBuffer(), onWidthDidChangeTmpBufOptBufArgsSerializer.length());
onWidthDidChangeTmpBufOptBufArgsSerializer.release();
return; }
        }
        let onWidthDidChangeTmpResult: Option<((selected: Float64) -> Unit)> = onWidthDidChangeTmpBuf
        let onTypeDidChangeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var onTypeDidChangeTmpBuf: Option<Callback_SheetType_Void> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(onTypeDidChangeTmpBuf_runtimeType))) {
            let onTypeDidChangeTmpBufOptBufResource: CallbackResource = valueDeserializer.readCallbackResource()
            let onTypeDidChangeTmpBufOptBufCall: UInt64 = valueDeserializer.readPointer()
            let onTypeDidChangeTmpBufOptBufCallSync: UInt64 = valueDeserializer.readPointer()
            onTypeDidChangeTmpBuf = {data: SheetType => let onTypeDidChangeTmpBufOptBufArgsSerializer: SerializerBase = SerializerBase.hold();
onTypeDidChangeTmpBufOptBufArgsSerializer.writeInt32(onTypeDidChangeTmpBufOptBufResource.resourceId);
onTypeDidChangeTmpBufOptBufArgsSerializer.writePointer(onTypeDidChangeTmpBufOptBufCall);
onTypeDidChangeTmpBufOptBufArgsSerializer.writePointer(onTypeDidChangeTmpBufOptBufCallSync);
onTypeDidChangeTmpBufOptBufArgsSerializer.writeInt32(data.value);
InteropNativeModule._CallCallbackSync(10, 2029584216, onTypeDidChangeTmpBufOptBufArgsSerializer.asBuffer(), onTypeDidChangeTmpBufOptBufArgsSerializer.length());
onTypeDidChangeTmpBufOptBufArgsSerializer.release();
return; }
        }
        let onTypeDidChangeTmpResult: Option<Callback_SheetType_Void> = onTypeDidChangeTmpBuf
        let uiContextTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var uiContextTmpBuf: Option<UIContext> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(uiContextTmpBuf_runtimeType))) {
            uiContextTmpBuf = match (ohos_arkui_UIContext_UIContext_serializer.read(valueDeserializer) as UIContext) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        }
        let uiContextTmpResult: Option<UIContext> = uiContextTmpBuf
        let keyboardAvoidModeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var keyboardAvoidModeTmpBuf: Option<SheetKeyboardAvoidMode> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(keyboardAvoidModeTmpBuf_runtimeType))) {
            keyboardAvoidModeTmpBuf = SheetKeyboardAvoidMode(valueDeserializer.readInt32())
        }
        let keyboardAvoidModeTmpResult: Option<SheetKeyboardAvoidMode> = keyboardAvoidModeTmpBuf
        let enableHoverModeTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var enableHoverModeTmpBuf: Option<Bool> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(enableHoverModeTmpBuf_runtimeType))) {
            enableHoverModeTmpBuf = valueDeserializer.readBoolean()
        }
        let enableHoverModeTmpResult: Option<Bool> = enableHoverModeTmpBuf
        let hoverModeAreaTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var hoverModeAreaTmpBuf: Option<HoverModeAreaType> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(hoverModeAreaTmpBuf_runtimeType))) {
            hoverModeAreaTmpBuf = HoverModeAreaType(valueDeserializer.readInt32())
        }
        let hoverModeAreaTmpResult: Option<HoverModeAreaType> = hoverModeAreaTmpBuf
        let offsetTmpBuf_runtimeType = match (valueDeserializer.readInt8() as Float64) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        var offsetTmpBuf: Option<Position> = Option.None
        if ((RuntimeType.UNDEFINED.ordinal) != (Int32(offsetTmpBuf_runtimeType))) {
            offsetTmpBuf = arkui_component_Position_serializer.read(valueDeserializer)
        }
        let offsetTmpResult: Option<Position> = offsetTmpBuf
        var value: SheetOptions = SheetOptions(heightTmpResult, dragBarTmpResult, maskColorTmpResult, detentsTmpResult, blurStyleTmpResult, showCloseTmpResult, preferTypeTmpResult, titleTmpResult, shouldDismissTmpResult, onWillDismissTmpResult, onWillSpringBackWhenDismissTmpResult, enableOutsideInteractiveTmpResult, widthTmpResult, borderWidthTmpResult, borderColorTmpResult, borderStyleTmpResult, shadowTmpResult, onHeightDidChangeTmpResult, modeTmpResult, scrollSizeModeTmpResult, onDetentsDidChangeTmpResult, onWidthDidChangeTmpResult, onTypeDidChangeTmpResult, uiContextTmpResult, keyboardAvoidModeTmpResult, enableHoverModeTmpResult, hoverModeAreaTmpResult, offsetTmpResult, backgroundColorTmpResult, onAppearTmpResult, onDisappearTmpResult, onWillAppearTmpResult, onWillDisappearTmpResult)
        return value
    }
}
