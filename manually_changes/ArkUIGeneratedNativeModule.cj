package cj_components

import std.collection.*
import ohos.macro_memoize.*
import ohos.incremental_runtime.*

import std.time.DateTime

foreign {
        func Blank_construct(id: KInt, flags: KInt): UInt64
        func BlankInterface_setBlankOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func BlankAttribute_setColor(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func Button_construct(id: KInt, flags: KInt): UInt64
        func ButtonInterface_setButtonOptions(ptr: UInt64): Unit
        func ButtonAttribute_setType(ptr: UInt64, value: KInt): Unit
        func ButtonAttribute_setLabelStyle(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CalendarPicker_construct(id: KInt, flags: KInt): UInt64
        func CalendarPickerInterface_setCalendarPickerOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CalendarPickerAttribute_setEdgeAlign(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CalendarPickerAttribute_setAltEdgeAlign(ptr: UInt64, alignType: KInt, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func Canvas_construct(id: KInt, flags: KInt): UInt64
        func CanvasInterface_setCanvasOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CanvasAttribute_setOnReady(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CanvasAttribute_setEnableAnalyzer(ptr: UInt64, enable: KInt): Unit
        func Column_construct(id: KInt, flags: KInt): UInt64
        func ColumnInterface_setColumnOptions(ptr: UInt64): Unit
        func ColumnAttribute_setAlignItems(ptr: UInt64, value: KInt): Unit
        func CommonMethod_construct(id: KInt, flags: KInt): UInt64
        func CommonMethod_setBackdropBlur(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CommonMethod_setWidth(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CommonMethod_setHeight(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CommonMethod_setKey(ptr: UInt64, value: CString): Unit
        func CommonMethod_setRestoreId(ptr: UInt64, value: Float64): Unit
        func CommonMethod_setPadding(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CommonMethod_setBackground(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CommonMethod_setBindSheet(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CommonMethod_setBackgroundBlurStyle(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CommonMethod_setDragPreviewOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CommonMethod_setLinearGradient(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CommonMethod_setBorder(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CommonMethod_setSize(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CommonMethod_setTransform(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CommonMethod_setOnChildTouchTest(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CommonMethod_setOnGestureRecognizerJudgeBegin(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CommonMethod_setOnClick(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32, distanceThreshold: Float64): Unit
        func CommonMethod_setBackgroundColor(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func Common_construct(id: KInt, flags: KInt): UInt64
        func CommonInterface_setCommonOptions(ptr: UInt64): Unit
        func CommonShapeMethod_construct(id: KInt, flags: KInt): UInt64
        func CommonShapeMethod_setStroke(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func ScrollableCommonMethod_construct(id: KInt, flags: KInt): UInt64
        func ScrollableCommonMethod_setScrollBarWidth(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func EmbeddedComponent_construct(id: KInt, flags: KInt): UInt64
        func EmbeddedComponentInterface_setEmbeddedComponentOptions(ptr: UInt64, loader: KPointer, type_: KInt): Unit
        func EmbeddedComponentAttribute_setOnTerminated(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func EmbeddedComponentAttribute_setOnError(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func FormComponent_construct(id: KInt, flags: KInt): UInt64
        func FormComponentInterface_setFormComponentOptions(ptr: UInt64): Unit
        func FormComponentAttribute_setOnAcquired(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func GridContainer_construct(id: KInt, flags: KInt): UInt64
        func GridContainerInterface_setGridContainerOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func Image_construct(id: KInt, flags: KInt): UInt64
        func ImageInterface_setImageOptions(ptr: UInt64): Unit
        func List_construct(id: KInt, flags: KInt): UInt64
        func ListInterface_setListOptions(ptr: UInt64): Unit
        func ListAttribute_setSomeOptional(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func ListAttribute_setOnScrollVisibleContentChange(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavDestination_construct(id: KInt, flags: KInt): UInt64
        func NavDestinationInterface_setNavDestinationOptions(ptr: UInt64): Unit
        func NavDestinationAttribute_setTitle(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavDestinationAttribute_setHideTitleBar(ptr: UInt64, value: KInt): Unit
        func NavDestinationAttribute_setOnShown(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavDestinationAttribute_setOnHidden(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavDestinationAttribute_setOnBackPressed(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavDestinationAttribute_setMode(ptr: UInt64, value: KInt): Unit
        func NavDestinationAttribute_setBackButtonIcon(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavDestinationAttribute_setMenus(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavDestinationAttribute_setOnReady(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavDestinationAttribute_setOnWillAppear(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavDestinationAttribute_setOnWillDisappear(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavDestinationAttribute_setOnWillShow(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavDestinationAttribute_setOnWillHide(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavDestinationAttribute_setIgnoreLayoutSafeArea(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func Navigation_construct(id: KInt, flags: KInt): UInt64
        func NavigationInterface_setNavigationOptions(ptr: UInt64, pathInfos: KPointer): Unit
        func NavigationAttribute_setNavBarWidth(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavigationAttribute_setNavBarPosition(ptr: UInt64, value: KInt): Unit
        func NavigationAttribute_setNavBarWidthRange(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavigationAttribute_setMinContentWidth(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavigationAttribute_setMode(ptr: UInt64, value: KInt): Unit
        func NavigationAttribute_setBackButtonIcon(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavigationAttribute_setHideNavBar(ptr: UInt64, value: KInt): Unit
        func NavigationAttribute_setTitle(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavigationAttribute_setSubTitle(ptr: UInt64, value: CString): Unit
        func NavigationAttribute_setHideTitleBar(ptr: UInt64, value: KInt): Unit
        func NavigationAttribute_setHideBackButton(ptr: UInt64, value: KInt): Unit
        func NavigationAttribute_setTitleMode(ptr: UInt64, value: KInt): Unit
        func NavigationAttribute_setMenus(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavigationAttribute_setToolBar(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavigationAttribute_setToolbarConfiguration(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavigationAttribute_setHideToolBar(ptr: UInt64, value: KInt): Unit
        func NavigationAttribute_setOnTitleModeChange(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavigationAttribute_setOnNavBarStateChange(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavigationAttribute_setOnNavigationModeChange(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavigationAttribute_setNavDestination(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavigationAttribute_setCustomNavContentTransition(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavigationAttribute_setIgnoreLayoutSafeArea(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavigationAttribute_setSystemBarStyle(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func Rect_construct(id: KInt, flags: KInt): UInt64
        func RectInterface_setRectOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func RectAttribute_setRadiusWidth(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func RectAttribute_setRadiusHeight(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func RectAttribute_setRadius(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func Scroll_construct(id: KInt, flags: KInt): UInt64
        func ScrollInterface_setScrollOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func SecurityComponentMethod_construct(id: KInt, flags: KInt): UInt64
        func Select_construct(id: KInt, flags: KInt): UInt64
        func SelectInterface_setSelectOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func SelectAttribute_set_onChangeEvent_selected(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func SelectAttribute_set_onChangeEvent_value(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func Shape_construct(id: KInt, flags: KInt): UInt64
        func ShapeInterface_setShapeOptions(ptr: UInt64): Unit
        func SideBarContainer_construct(id: KInt, flags: KInt): UInt64
        func SideBarContainerInterface_setSideBarContainerOptions(ptr: UInt64): Unit
        func SideBarContainerAttribute_setMinSideBarWidth0(ptr: UInt64, value: Float64): Unit
        func SideBarContainerAttribute_setMinSideBarWidth1(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func SideBarContainerAttribute_set_onChangeEvent_showSideBar(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func Slider_construct(id: KInt, flags: KInt): UInt64
        func SliderAttribute_setBlockColor(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func SliderAttribute_setTrackColor(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func SliderAttribute_setSelectedColor(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func SliderAttribute_setMinLabel(ptr: UInt64, value: CString): Unit
        func SliderAttribute_setMaxLabel(ptr: UInt64, value: CString): Unit
        func SliderAttribute_setShowSteps(ptr: UInt64, value: KInt): Unit
        func SliderAttribute_setShowTips(ptr: UInt64, value: KInt, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func SliderAttribute_set_onChangeEvent_value(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func BaseSpan_construct(id: KInt, flags: KInt): UInt64
        func Swiper_construct(id: KInt, flags: KInt): UInt64
        func SwiperInterface_setSwiperOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func SwiperAttribute_setIndex(ptr: UInt64, value: Float64): Unit
        func SwiperAttribute_setIndicator(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func SwiperAttribute_set_onChangeEvent_index(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func SymbolGlyph_construct(id: KInt, flags: KInt): UInt64
        func SymbolGlyphInterface_setSymbolGlyphOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func SymbolGlyphAttribute_setFontSize(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TabContent_construct(id: KInt, flags: KInt): UInt64
        func TabContentInterface_setTabContentOptions(ptr: UInt64): Unit
        func TabContentAttribute_setTabBar0(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TabContentAttribute_setTabBar1(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func Tabs_construct(id: KInt, flags: KInt): UInt64
        func TabsInterface_setTabsOptions(ptr: UInt64): Unit
        func TabsAttribute_setBarMode(ptr: UInt64, value: KInt): Unit
        func TabsAttribute_set_onChangeEvent_index(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func Test_construct(id: KInt, flags: KInt): UInt64
        func TestInterface_setTestOptions(ptr: UInt64): Unit
        func TestAttribute_setTestBoolean(ptr: UInt64, value: KInt): Unit
        func TestAttribute_setTestNumber(ptr: UInt64, value: Float64): Unit
        func TestAttribute_setTestString(ptr: UInt64, value: CString): Unit
        func TestAttribute_setTestEnum(ptr: UInt64, value: KInt): Unit
        func TestAttribute_setTestFunction(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestBasicMix(ptr: UInt64, v1: Float64, v2: CString, v3: Float64): Unit
        func TestAttribute_setTestBooleanUndefined(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestNumberUndefined(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestStringUndefined(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestEnumUndefined(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestFunctionUndefined(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestUnionNumberEnum(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestUnionBooleanString(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestUnionStringNumber(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestUnionBooleanStringNumberUndefined(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestUnionWithGenericArray(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestUnionWithArrayType(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestBooleanArray(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestNumberArray(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestStringArray(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestEnumArray(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestArrayMix(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestTupleBooleanNumber(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestTupleNumberStringEnum(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestTupleOptional(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestTupleUnion(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestArrayRefBoolean(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestArrayRefNumber(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestBooleanInterface(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestNumberInterface(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestStringInterface(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestUnionInterface(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestUnionOptional(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestTupleInterface(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestOptionInterface(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestArrayRefNumberInterface(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestBooleanInterfaceOption(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestBooleanInterfaceTuple(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestBooleanInterfaceArray(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestBooleanInterfaceArrayRef(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestInterfaceMixed(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32, v2: Float64): Unit
        func TestAttribute_setTestClass(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TestAttribute_setTestClassWithConstructor(ptr: UInt64, value: KPointer): Unit
        func TestAttribute_setTestClassWithConstructorAndFields(ptr: UInt64, value: KPointer): Unit
        func TestAttribute_setTestClassWithConstructorAndMethods(ptr: UInt64, value: KPointer): Unit
        func TestAttribute_setTestClassWithConstructorAndStaticMethods(ptr: UInt64, value: KPointer): Unit
        func TestAttribute_setTestClassWithConstructorAndFieldsAndMethods(ptr: UInt64, value: KPointer): Unit
        func TestAttribute_setTestClassWithConstructorAndNonOptionalParams(ptr: UInt64, value: KPointer): Unit
        func TestAttribute_setTestClassWithConstructorAndSomeOptionalParams(ptr: UInt64, value: KPointer): Unit
        func TestAttribute_setTestClassWithConstructorAndAllOptionalParams(ptr: UInt64, value: KPointer): Unit
        func TestAttribute_setTestClassWithConstructorAndWithoutParams(ptr: UInt64, value: KPointer): Unit
        func TextInput_construct(id: KInt, flags: KInt): UInt64
        func TextInputInterface_setTextInputOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TextInputAttribute_setType(ptr: UInt64, value: KInt): Unit
        func TextInputAttribute_setContentType(ptr: UInt64, value: KInt): Unit
        func TextInputAttribute_setOnChange(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TextInputAttribute_setOnEditChanged(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TextInputAttribute_set_onChangeEvent_text(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TextPicker_construct(id: KInt, flags: KInt): UInt64
        func TextPickerInterface_setTextPickerOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TextPickerAttribute_setDefaultPickerItemHeight(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TextPickerAttribute_setCanLoop(ptr: UInt64, value: KInt): Unit
        func TextPickerAttribute_setOnAccept(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TextPickerAttribute_setOnCancel(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TextPickerAttribute_setOnChange(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TextPickerAttribute_setSelectedIndex(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TextPickerAttribute_setDivider(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TextPickerAttribute_setGradientHeight(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TextPickerAttribute_set_onChangeEvent_selected(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TextPickerAttribute_set_onChangeEvent_value(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func Text_construct(id: KInt, flags: KInt): UInt64
        func TextInterface_setTextOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TextAttribute_setFont(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TextAttribute_setFontColor(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func UIExtensionComponent_construct(id: KInt, flags: KInt): UInt64
        func UIExtensionComponentInterface_setUIExtensionComponentOptions(ptr: UInt64, want: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func UIExtensionComponentAttribute_setOnRemoteReady(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func UIExtensionComponentAttribute_setOnReceive(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func UIExtensionComponentAttribute_setOnResult(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func UIExtensionComponentAttribute_setOnRelease(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func UIExtensionComponentAttribute_setOnError(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func UIExtensionComponentAttribute_setOnTerminated(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func Vector_construct(id: KInt, flags: KInt): UInt64
        func VectorInterface_setVectorOptions(ptr: UInt64): Unit
        func VectorAttribute_setTestVector1(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func VectorAttribute_setTestVector2(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func VectorAttribute_setTestUnionVector1Number(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func VectorAttribute_setTestUnionVector2Number(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func Web_construct(id: KInt, flags: KInt): UInt64
        func WebInterface_setWebOptions(ptr: UInt64): Unit
        func WebAttribute_setOnNativeEmbedLifecycleChange(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func WebAttribute_setOnRenderExited0(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func WebAttribute_setOnRenderExited1(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func WebAttribute_setOnHttpErrorReceive(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func Root_construct(id: KInt, flags: KInt): UInt64
        func ComponentRoot_construct(id: KInt, flags: KInt): UInt64
        func CustomBuilderRoot_construct(id: KInt, flags: KInt): UInt64
        func ConditionScope_construct(id: KInt, flags: KInt): UInt64
        func CustomLayoutRoot_construct(id: KInt, flags: KInt): UInt64
        func CustomLayoutRoot_setSubscribeOnMeasureSize(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CustomLayoutRoot_setSubscribeOnPlaceChildren(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func BaseEvent_construct(): UInt64
        func BaseEvent_getFinalizer(): UInt64
        func BaseEvent_getModifierKeyState(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Bool
        func BaseEvent_getSource(ptr: UInt64): Int32
        func BaseEvent_setSource(ptr: UInt64, source: KInt): Unit
        func BaseEvent_getAxisHorizontal(ptr: UInt64): KInteropReturnBuffer
        func BaseEvent_setAxisHorizontal(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func BaseEvent_getAxisVertical(ptr: UInt64): KInteropReturnBuffer
        func BaseEvent_setAxisVertical(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func BaseEvent_getPressure(ptr: UInt64): Float64
        func BaseEvent_setPressure(ptr: UInt64, pressure: Float64): Unit
        func BaseEvent_getTiltX(ptr: UInt64): Float64
        func BaseEvent_setTiltX(ptr: UInt64, tiltX: Float64): Unit
        func BaseEvent_getSourceTool(ptr: UInt64): Int32
        func BaseEvent_setSourceTool(ptr: UInt64, sourceTool: KInt): Unit
        func BaseEvent_getDeviceId(ptr: UInt64): KInteropReturnBuffer
        func BaseEvent_setDeviceId(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func BaseEvent_getTargetDisplayId(ptr: UInt64): KInteropReturnBuffer
        func BaseEvent_setTargetDisplayId(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func BaseGestureEvent_construct(): UInt64
        func BaseGestureEvent_getFinalizer(): UInt64
        func BaseGestureEvent_getFingerList(ptr: UInt64): KInteropReturnBuffer
        func BaseGestureEvent_setFingerList(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CanvasGradient_construct(): UInt64
        func CanvasGradient_getFinalizer(): UInt64
        func CanvasGradient_addColorStop(ptr: UInt64, offset: Float64, color: CString): Unit
        func CanvasPath_construct(): UInt64
        func CanvasPath_getFinalizer(): UInt64
        func CanvasPath_rect(ptr: UInt64, x: Float64, y: Float64, w: Float64, h: Float64): Unit
        func CanvasPath_arc(ptr: UInt64, x: Float64, y: Float64, radius: Float64, startAngle: Float64, endAngle: Float64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CanvasPath_closePath(ptr: UInt64): Unit
        func CanvasPattern_construct(): UInt64
        func CanvasPattern_getFinalizer(): UInt64
        func CanvasPattern_setTransform(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CanvasRenderer_construct(): UInt64
        func CanvasRenderer_getFinalizer(): UInt64
        func CanvasRenderer_beginPath(ptr: UInt64): Unit
        func CanvasRenderer_clip(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CanvasRenderer_reset(ptr: UInt64): Unit
        func CanvasRenderer_putImageData0(ptr: UInt64, imagedata: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CanvasRenderer_putImageData1(ptr: UInt64, imagedata: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CanvasRenderer_getGlobalAlpha(ptr: UInt64): Float64
        func CanvasRenderer_setGlobalAlpha(ptr: UInt64, globalAlpha: Float64): Unit
        func CanvasRenderer_getGlobalCompositeOperation(ptr: UInt64): CString
        func CanvasRenderer_setGlobalCompositeOperation(ptr: UInt64, globalCompositeOperation: CString): Unit
        func CanvasRenderer_getFillStyle(ptr: UInt64): KInteropReturnBuffer
        func CanvasRenderer_setFillStyle(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CanvasRenderingContext2D_construct(thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func CanvasRenderingContext2D_getFinalizer(): UInt64
        func CanvasRenderingContext2D_stopImageAnalyzer(ptr: UInt64): Unit
        func CanvasRenderingContext2D_of(): UInt64
        func CanvasRenderingContext2D_getHeight(ptr: UInt64): Float64
        func CanvasRenderingContext2D_getWidth(ptr: UInt64): Float64
        func ClassNoConstructorAndStaticMethodsDTS_method(valNumber: Float64, valString: CString): Unit
        func ClassNoConstructorAndStaticMethodsDTS_method2(valNumber: Float64, valString: CString): Unit
        func ClassWithConstructorAndAllOptionalParamsDTS_construct(thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func ClassWithConstructorAndAllOptionalParamsDTS_getFinalizer(): UInt64
        func ClassWithConstructorAndAllOptionalParamsDTS_of(thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func ClassWithConstructorAndAllOptionalParamsDTS_method(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func ClassWithConstructorAndFieldsAndMethodsDTS_construct(valNumber: Float64, valBoolean: KInt): UInt64
        func ClassWithConstructorAndFieldsAndMethodsDTS_getFinalizer(): UInt64
        func ClassWithConstructorAndFieldsAndMethodsDTS_method(ptr: UInt64, valNumber: Float64, valString: CString): Unit
        func ClassWithConstructorAndFieldsAndMethodsDTS_getValNumber(ptr: UInt64): Float64
        func ClassWithConstructorAndFieldsAndMethodsDTS_setValNumber(ptr: UInt64, valNumber: Float64): Unit
        func ClassWithConstructorAndFieldsAndMethodsDTS_getValBoolean(ptr: UInt64): Bool
        func ClassWithConstructorAndFieldsAndMethodsDTS_setValBoolean(ptr: UInt64, valBoolean: KInt): Unit
        func ClassWithConstructorAndFieldsDTS_construct(valNumber: Float64, valBoolean: KInt): UInt64
        func ClassWithConstructorAndFieldsDTS_getFinalizer(): UInt64
        func ClassWithConstructorAndFieldsDTS_getValNumber(ptr: UInt64): Float64
        func ClassWithConstructorAndFieldsDTS_setValNumber(ptr: UInt64, valNumber: Float64): Unit
        func ClassWithConstructorAndFieldsDTS_getValBoolean(ptr: UInt64): Bool
        func ClassWithConstructorAndFieldsDTS_setValBoolean(ptr: UInt64, valBoolean: KInt): Unit
        func ClassWithConstructorAndMethodsDTS_construct(valNumber: Float64, valString: CString): UInt64
        func ClassWithConstructorAndMethodsDTS_getFinalizer(): UInt64
        func ClassWithConstructorAndMethodsDTS_method(ptr: UInt64, valNumber: Float64, valString: CString): Unit
        func ClassWithConstructorAndNonOptionalParamsDTS_construct(valNumber: Float64, valString: CString): UInt64
        func ClassWithConstructorAndNonOptionalParamsDTS_getFinalizer(): UInt64
        func ClassWithConstructorAndNonOptionalParamsDTS_of(valNumber: Float64, valString: CString): UInt64
        func ClassWithConstructorAndNonOptionalParamsDTS_method(ptr: UInt64, valBoolean: KInt, valString: CString): Unit
        func ClassWithConstructorAndSomeOptionalParamsDTS_construct(valNumber: Float64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func ClassWithConstructorAndSomeOptionalParamsDTS_getFinalizer(): UInt64
        func ClassWithConstructorAndSomeOptionalParamsDTS_of(valNumber: Float64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func ClassWithConstructorAndSomeOptionalParamsDTS_method(ptr: UInt64, valBoolean: KInt, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func ClassWithConstructorAndStaticMethodsDTS_construct(valNumber: Float64, valString: CString): UInt64
        func ClassWithConstructorAndStaticMethodsDTS_getFinalizer(): UInt64
        func ClassWithConstructorAndStaticMethodsDTS_of(valNumber: Float64, valString: CString): UInt64
        func ClassWithConstructorAndWithoutParamsDTS_construct(): UInt64
        func ClassWithConstructorAndWithoutParamsDTS_getFinalizer(): UInt64
        func ClassWithConstructorAndWithoutParamsDTS_of(): UInt64
        func ClassWithConstructorAndWithoutParamsDTS_method(ptr: UInt64): Unit
        func ClassWithConstructorDTS_construct(valNumber: Float64, valString: CString): UInt64
        func ClassWithConstructorDTS_getFinalizer(): UInt64
        func ClickEvent_construct(): UInt64
        func ClickEvent_getFinalizer(): UInt64
        func ClickEvent_getDisplayX(ptr: UInt64): Float64
        func ClickEvent_setDisplayX(ptr: UInt64, displayX: Float64): Unit
        func ClickEvent_getDisplayY(ptr: UInt64): Float64
        func ClickEvent_setDisplayY(ptr: UInt64, displayY: Float64): Unit
        func ClickEvent_getWindowX(ptr: UInt64): Float64
        func ClickEvent_setWindowX(ptr: UInt64, windowX: Float64): Unit
        func ClickEvent_getWindowY(ptr: UInt64): Float64
        func ClickEvent_setWindowY(ptr: UInt64, windowY: Float64): Unit
        func ClickEvent_getScreenX(ptr: UInt64): Float64
        func ClickEvent_setScreenX(ptr: UInt64, screenX: Float64): Unit
        func ClickEvent_getScreenY(ptr: UInt64): Float64
        func ClickEvent_setScreenY(ptr: UInt64, screenY: Float64): Unit
        func ClickEvent_getX(ptr: UInt64): Float64
        func ClickEvent_setX(ptr: UInt64, x: Float64): Unit
        func ClickEvent_getY(ptr: UInt64): Float64
        func ClickEvent_setY(ptr: UInt64, y: Float64): Unit
        func ClickEvent_getPreventDefault(ptr: UInt64): UInt64
        func ClickEvent_setPreventDefault(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func ColorFilter_construct(thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func ColorFilter_getFinalizer(): UInt64
        func CustomDialogController_construct(thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func CustomDialogController_getFinalizer(): UInt64
        func CustomDialogController_open(ptr: UInt64): Unit
        func CustomDialogController_close(ptr: UInt64): Unit
        func CustomSpan_construct(): UInt64
        func CustomSpan_getFinalizer(): UInt64
        func CustomSpan_invalidate(ptr: UInt64): Unit
        func CustomSpan_getOnMeasure(ptr: UInt64): UInt64
        func CustomSpan_setOnMeasure(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func CustomSpan_getOnDraw(ptr: UInt64): UInt64
        func CustomSpan_setOnDraw(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func DrawingRenderingContext_construct(thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func DrawingRenderingContext_getFinalizer(): UInt64
        func DrawingRenderingContext_invalidate(ptr: UInt64): Unit
        func DrawingRenderingContext_getSize(ptr: UInt64): KInteropReturnBuffer
        func DrawingRenderingContext_getCanvas(ptr: UInt64): KInteropReturnBuffer
        func DrawModifier_construct(): UInt64
        func DrawModifier_getFinalizer(): UInt64
        func DrawModifier_invalidate(ptr: UInt64): Unit
        func DrawModifier_getDrawBehind(ptr: UInt64): KInteropReturnBuffer
        func DrawModifier_setDrawBehind(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func DrawModifier_getDrawContent(ptr: UInt64): KInteropReturnBuffer
        func DrawModifier_setDrawContent(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func DrawModifier_getDrawFront(ptr: UInt64): KInteropReturnBuffer
        func DrawModifier_setDrawFront(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func EventEmulator_emitClickEvent(node: KPointer, event: KPointer): Unit
        func EventEmulator_emitTextInputEvent(node: KPointer, text: CString): Unit
        func EventTargetInfo_construct(): UInt64
        func EventTargetInfo_getFinalizer(): UInt64
        func EventTargetInfo_getId(ptr: UInt64): CString
        func GestureRecognizer_construct(): UInt64
        func GestureRecognizer_getFinalizer(): UInt64
        func GestureRecognizer_getTag(ptr: UInt64): CString
        func GestureRecognizer_getType(ptr: UInt64): Int32
        func GestureRecognizer_isBuiltIn(ptr: UInt64): Bool
        func GestureRecognizer_setEnabled(ptr: UInt64, isEnabled: KInt): Unit
        func GestureRecognizer_isEnabled(ptr: UInt64): Bool
        func GestureRecognizer_getState(ptr: UInt64): Int32
        func GestureRecognizer_getEventTargetInfo(ptr: UInt64): UInt64
        func ICurve_construct(): UInt64
        func ICurve_getFinalizer(): UInt64
        func ICurve_interpolate(ptr: UInt64, fraction: Float64): Float64
        func image_PixelMap_construct(): UInt64
        func image_PixelMap_getFinalizer(): UInt64
        func ImageBitmap_construct0(src: CString): UInt64
        func ImageBitmap_construct1(src: CString, unit: KInt): UInt64
        func ImageBitmap_construct2(data: KPointer): UInt64
        func ImageBitmap_construct3(data: KPointer, unit: KInt): UInt64
        func ImageBitmap_getFinalizer(): UInt64
        func ImageBitmap_close(ptr: UInt64): Unit
        func ImageData_construct0(width: Float64, height: Float64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func ImageData_construct1(width: Float64, height: Float64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func ImageData_getFinalizer(): UInt64
        func ImageData_getData(ptr: UInt64): KInteropReturnBuffer
        func ImageData_getHeight(ptr: UInt64): Float64
        func ImageData_getWidth(ptr: UInt64): Float64
        func Layoutable_construct(): UInt64
        func Layoutable_getFinalizer(): UInt64
        func Layoutable_layout(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func Layoutable_getMargin(ptr: UInt64): KInteropReturnBuffer
        func Layoutable_getPadding(ptr: UInt64): KInteropReturnBuffer
        func Layoutable_getBorderWidth(ptr: UInt64): KInteropReturnBuffer
        func Layoutable_getMeasureResult(ptr: UInt64): KInteropReturnBuffer
        func Layoutable_setMeasureResult(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func LinearGradient_construct(thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func LinearGradient_getFinalizer(): UInt64
        func Matrix2D_construct0(): UInt64
        func Matrix2D_construct1(unit: KInt): UInt64
        func Matrix2D_getFinalizer(): UInt64
        func Matrix2D_identity(ptr: UInt64): UInt64
        func Matrix2D_invert(ptr: UInt64): UInt64
        func Matrix2D_multiply(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func Matrix2D_rotate0(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func Matrix2D_rotate1(ptr: UInt64, degree: Float64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func Matrix2D_translate(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func Matrix2D_scale(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func Matrix2D_getScaleX(ptr: UInt64): KInteropReturnBuffer
        func Matrix2D_setScaleX(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func Matrix2D_getRotateY(ptr: UInt64): KInteropReturnBuffer
        func Matrix2D_setRotateY(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func Matrix2D_getRotateX(ptr: UInt64): KInteropReturnBuffer
        func Matrix2D_setRotateX(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func Matrix2D_getScaleY(ptr: UInt64): KInteropReturnBuffer
        func Matrix2D_setScaleY(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func Matrix2D_getTranslateX(ptr: UInt64): KInteropReturnBuffer
        func Matrix2D_setTranslateX(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func Matrix2D_getTranslateY(ptr: UInt64): KInteropReturnBuffer
        func Matrix2D_setTranslateY(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func Measurable_construct(): UInt64
        func Measurable_getFinalizer(): UInt64
        func Measurable_measure(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): KInteropReturnBuffer
        func Measurable_getMargin(ptr: UInt64): KInteropReturnBuffer
        func Measurable_getPadding(ptr: UInt64): KInteropReturnBuffer
        func Measurable_getBorderWidth(ptr: UInt64): KInteropReturnBuffer
        func MediaQuery_construct(): UInt64
        func MediaQuery_getFinalizer(): UInt64
        func MediaQuery_stub(ptr: UInt64): Unit
        func NavDestinationContext_construct(): UInt64
        func NavDestinationContext_getFinalizer(): UInt64
        func NavDestinationContext_getConfigInRouteMap(ptr: UInt64): KInteropReturnBuffer
        func NavDestinationContext_getPathInfo(ptr: UInt64): UInt64
        func NavDestinationContext_setPathInfo(ptr: UInt64, pathInfo: KPointer): Unit
        func NavDestinationContext_getPathStack(ptr: UInt64): UInt64
        func NavDestinationContext_setPathStack(ptr: UInt64, pathStack: KPointer): Unit
        func NavDestinationContext_getNavDestinationId(ptr: UInt64): KInteropReturnBuffer
        func NavDestinationContext_setNavDestinationId(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavDestinationInfo_construct(): UInt64
        func NavDestinationInfo_getFinalizer(): UInt64
        func NavDestinationInfo_stub(ptr: UInt64): Unit
        func NavigationInfo_construct(): UInt64
        func NavigationInfo_getFinalizer(): UInt64
        func NavigationInfo_stub(ptr: UInt64): Unit
        func NavigationTransitionProxy_construct(): UInt64
        func NavigationTransitionProxy_getFinalizer(): UInt64
        func NavigationTransitionProxy_finishTransition(ptr: UInt64): Unit
        func NavigationTransitionProxy_cancelTransition(ptr: UInt64): Unit
        func NavigationTransitionProxy_updateTransition(ptr: UInt64, progress: Float64): Unit
        func NavigationTransitionProxy_getFrom(ptr: UInt64): KInteropReturnBuffer
        func NavigationTransitionProxy_setFrom(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavigationTransitionProxy_getTo(ptr: UInt64): KInteropReturnBuffer
        func NavigationTransitionProxy_setTo(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavigationTransitionProxy_getIsInteractive(ptr: UInt64): KInteropReturnBuffer
        func NavigationTransitionProxy_setIsInteractive(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavPathInfo_construct(name: CString, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func NavPathInfo_getFinalizer(): UInt64
        func NavPathInfo_getName(ptr: UInt64): CString
        func NavPathInfo_setName(ptr: UInt64, name: CString): Unit
        func NavPathInfo_getParam(ptr: UInt64): KInteropReturnBuffer
        func NavPathInfo_setParam(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavPathInfo_getOnPop(ptr: UInt64): KInteropReturnBuffer
        func NavPathInfo_setOnPop(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavPathStack_construct(): UInt64
        func NavPathStack_getFinalizer(): UInt64
        func NavPathStack_pushPath0(ptr: UInt64, info: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavPathStack_pushPath1(ptr: UInt64, info: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavPathStack_pushDestination0(ptr: UInt64, info: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavPathStack_pushDestination1(ptr: UInt64, info: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavPathStack_pushPathByName0(ptr: UInt64, name: CString, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavPathStack_pushPathByName1(ptr: UInt64, name: CString, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavPathStack_pushDestinationByName0(ptr: UInt64, name: CString, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavPathStack_pushDestinationByName1(ptr: UInt64, name: CString, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavPathStack_replacePath0(ptr: UInt64, info: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavPathStack_replacePath1(ptr: UInt64, info: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavPathStack_replacePathByName(ptr: UInt64, name: CString, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavPathStack_removeByIndexes(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Float64
        func NavPathStack_removeByName(ptr: UInt64, name: CString): Float64
        func NavPathStack_removeByNavDestinationId(ptr: UInt64, navDestinationId: CString): Bool
        func NavPathStack_pop0(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): KInteropReturnBuffer
        func NavPathStack_pop1(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): KInteropReturnBuffer
        func NavPathStack_popToName0(ptr: UInt64, name: CString, thisArray: KSerializerBuffer, thisLength: Int32): Float64
        func NavPathStack_popToName1(ptr: UInt64, name: CString, thisArray: KSerializerBuffer, thisLength: Int32): Float64
        func NavPathStack_popToIndex0(ptr: UInt64, index: Float64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavPathStack_popToIndex1(ptr: UInt64, index: Float64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavPathStack_moveToTop(ptr: UInt64, name: CString, thisArray: KSerializerBuffer, thisLength: Int32): Float64
        func NavPathStack_moveIndexToTop(ptr: UInt64, index: Float64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavPathStack_clear(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func NavPathStack_getAllPathName(ptr: UInt64): KInteropReturnBuffer
        func NavPathStack_getParamByIndex(ptr: UInt64, index: Float64): KInteropReturnBuffer
        func NavPathStack_getParamByName(ptr: UInt64, name: CString): KInteropReturnBuffer
        func NavPathStack_getIndexByName(ptr: UInt64, name: CString): KInteropReturnBuffer
        func NavPathStack_getParent(ptr: UInt64): KInteropReturnBuffer
        func NavPathStack_size(ptr: UInt64): Float64
        func NavPathStack_disableAnimation(ptr: UInt64, value: KInt): Unit
        func NavPathStack_setInterception(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func OverlayManager_construct(): UInt64
        func OverlayManager_getFinalizer(): UInt64
        func OverlayManager_stub(ptr: UInt64): Unit
        func OverlayManagerOptions_construct(): UInt64
        func OverlayManagerOptions_getFinalizer(): UInt64
        func OverlayManagerOptions_stub(ptr: UInt64): Unit
        func PageInfo_construct(): UInt64
        func PageInfo_getFinalizer(): UInt64
        func PageInfo_stub(ptr: UInt64): Unit
        func PromptAction_construct(): UInt64
        func PromptAction_getFinalizer(): UInt64
        func PromptAction_stub(ptr: UInt64): Unit
        func PromptActionCommonController_construct(): UInt64
        func PromptActionCommonController_getFinalizer(): UInt64
        func PromptActionCommonController_stub(ptr: UInt64): Unit
        func PromptActionDialogController_construct(): UInt64
        func PromptActionDialogController_getFinalizer(): UInt64
        func PromptActionDialogController_stub(ptr: UInt64): Unit
        func RenderingContextSettings_construct(thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func RenderingContextSettings_getFinalizer(): UInt64
        func RenderingContextSettings_getAntialias(ptr: UInt64): KInteropReturnBuffer
        func RenderingContextSettings_setAntialias(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func RenderServiceNode_getNodeId(nodeId: CString): Int32
        func Router_construct(): UInt64
        func Router_getFinalizer(): UInt64
        func Router_stub(ptr: UInt64): Unit
        func RouterPageInfo_construct(): UInt64
        func RouterPageInfo_getFinalizer(): UInt64
        func RouterPageInfo_stub(ptr: UInt64): Unit
        func ScreenshotService_requestScreenshot(target: CString, name: CString): Bool
        func Scroller_construct(): UInt64
        func Scroller_getFinalizer(): UInt64
        func Scroller_scrollTo(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func Scroller_scrollPage0(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func Scroller_scrollPage1(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func StyledString_construct(): UInt64
        func StyledString_getFinalizer(): UInt64
        func StyledString_getString(ptr: UInt64): CString
        func StyledString_equals(ptr: UInt64, other: KPointer): Bool
        func StyledString_subStyledString(ptr: UInt64, start: Float64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func StyledString_marshalling(styledString: KPointer): KInteropReturnBuffer
        func StyledString_getLength(ptr: UInt64): Float64
        func SwiperController_construct(): UInt64
        func SwiperController_getFinalizer(): UInt64
        func SwiperController_showNext(ptr: UInt64): Unit
        func SwiperController_showPrevious(ptr: UInt64): Unit
        func SwiperController_changeIndex(ptr: UInt64, index: Float64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func SwiperController_finishAnimation(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func SymbolGlyphModifier_construct(thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func SymbolGlyphModifier_getFinalizer(): UInt64
        func TargetInfo_construct(): UInt64
        func TargetInfo_getFinalizer(): UInt64
        func TargetInfo_stub(ptr: UInt64): Unit
        func TextController_construct(): UInt64
        func TextController_getFinalizer(): UInt64
        func TextController_closeSelectionMenu(ptr: UInt64): Unit
        func TextController_setStyledString(ptr: UInt64, value: KPointer): Unit
        func TextPickerDialog_show(thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func TextStyle_styled_string_construct(thisArray: KSerializerBuffer, thisLength: Int32): UInt64
        func TextStyle_styled_string_getFinalizer(): UInt64
        func TextStyle_styled_string_getFontColor(ptr: UInt64): KInteropReturnBuffer
        func TextStyle_styled_string_getFontFamily(ptr: UInt64): KInteropReturnBuffer
        func TextStyle_styled_string_getFontSize(ptr: UInt64): KInteropReturnBuffer
        func TextStyle_styled_string_getFontWeight(ptr: UInt64): KInteropReturnBuffer
        func TextStyle_styled_string_getFontStyle(ptr: UInt64): KInteropReturnBuffer
        func Theme_construct(): UInt64
        func Theme_getFinalizer(): UInt64
        func UICommonEvent_construct(): UInt64
        func UICommonEvent_getFinalizer(): UInt64
        func UICommonEvent_setOnClick(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func UIContext_construct(): UInt64
        func UIContext_getFinalizer(): UInt64
        func UIContext_stub(ptr: UInt64): Unit
        func UIExtensionProxy_construct(): UInt64
        func UIExtensionProxy_getFinalizer(): UInt64
        func UIExtensionProxy_send(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func UIExtensionProxy_sendSync(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): KInteropReturnBuffer
        func UIExtensionProxy_onAsyncReceiverRegister(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func UIExtensionProxy_onSyncReceiverRegister(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func UIExtensionProxy_offAsyncReceiverRegister(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func UIExtensionProxy_offSyncReceiverRegister(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func UIInspector_construct(): UInt64
        func UIInspector_getFinalizer(): UInt64
        func UIInspector_stub(ptr: UInt64): Unit
        func UIObserver_construct(): UInt64
        func UIObserver_getFinalizer(): UInt64
        func UIObserver_stub(ptr: UInt64): Unit
        func UrlStyle_construct(url: CString): UInt64
        func UrlStyle_getFinalizer(): UInt64
        func UrlStyle_getUrl(ptr: UInt64): CString
        func Want_construct(): UInt64
        func Want_getFinalizer(): UInt64
        func Want_stub(ptr: UInt64): Unit
        func WebResourceResponse_construct(): UInt64
        func WebResourceResponse_getFinalizer(): UInt64
        func WebResourceResponse_setResponseData(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func window_SystemBarStyle_construct(): UInt64
        func window_SystemBarStyle_getFinalizer(): UInt64
        func XComponentController_construct(): UInt64
        func XComponentController_getFinalizer(): UInt64
        func XComponentController_getXComponentContext(ptr: UInt64): Unit
        func XComponentController_setXComponentSurfaceSize(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func XComponentController_stopImageAnalyzer(ptr: UInt64): Unit
        func XComponentController_getOnSurfaceCreated(ptr: UInt64): UInt64
        func XComponentController_setOnSurfaceCreated(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func XComponentController_getOnSurfaceDestroyed(ptr: UInt64): UInt64
        func XComponentController_setOnSurfaceDestroyed(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit
        func GlobalScope_toIncludeDouble(thisArray: KSerializerBuffer, thisLength: Int32): Unit
}
public open class ArkUIGeneratedNativeModule {
    public static func _Blank_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = Blank_construct(id, flags)
            return result
        }
    }
    public static func _BlankInterface_setBlankOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            BlankInterface_setBlankOptions(ptr, thisArray, thisLength)
        }
    }
    public static func _BlankAttribute_setColor(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            BlankAttribute_setColor(ptr, thisArray, thisLength)
        }
    }
    public static func _Button_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = Button_construct(id, flags)
            return result
        }
    }
    public static func _ButtonInterface_setButtonOptions(ptr: UInt64): Unit {
        unsafe {
            ButtonInterface_setButtonOptions(ptr)
        }
    }
    public static func _ButtonAttribute_setType(ptr: UInt64, value: KInt): Unit {
        unsafe {
            ButtonAttribute_setType(ptr, value)
        }
    }
    public static func _ButtonAttribute_setLabelStyle(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            ButtonAttribute_setLabelStyle(ptr, thisArray, thisLength)
        }
    }
    public static func _CalendarPicker_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = CalendarPicker_construct(id, flags)
            return result
        }
    }
    public static func _CalendarPickerInterface_setCalendarPickerOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CalendarPickerInterface_setCalendarPickerOptions(ptr, thisArray, thisLength)
        }
    }
    public static func _CalendarPickerAttribute_setEdgeAlign(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CalendarPickerAttribute_setEdgeAlign(ptr, thisArray, thisLength)
        }
    }
    public static func _CalendarPickerAttribute_setAltEdgeAlign(ptr: UInt64, alignType: KInt, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CalendarPickerAttribute_setAltEdgeAlign(ptr, alignType, thisArray, thisLength)
        }
    }
    public static func _Canvas_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = Canvas_construct(id, flags)
            return result
        }
    }
    public static func _CanvasInterface_setCanvasOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CanvasInterface_setCanvasOptions(ptr, thisArray, thisLength)
        }
    }
    public static func _CanvasAttribute_setOnReady(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CanvasAttribute_setOnReady(ptr, thisArray, thisLength)
        }
    }
    public static func _CanvasAttribute_setEnableAnalyzer(ptr: UInt64, enable: KInt): Unit {
        unsafe {
            CanvasAttribute_setEnableAnalyzer(ptr, enable)
        }
    }
    public static func _Column_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = Column_construct(id, flags)
            return result
        }
    }
    public static func _ColumnInterface_setColumnOptions(ptr: UInt64): Unit {
        unsafe {
            ColumnInterface_setColumnOptions(ptr)
        }
    }
    public static func _ColumnAttribute_setAlignItems(ptr: UInt64, value: KInt): Unit {
        unsafe {
            ColumnAttribute_setAlignItems(ptr, value)
        }
    }
    public static func _CommonMethod_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = CommonMethod_construct(id, flags)
            return result
        }
    }
    public static func _CommonMethod_setBackdropBlur(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CommonMethod_setBackdropBlur(ptr, thisArray, thisLength)
        }
    }
    public static func _CommonMethod_setWidth(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CommonMethod_setWidth(ptr, thisArray, thisLength)
        }
    }
    public static func _CommonMethod_setHeight(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CommonMethod_setHeight(ptr, thisArray, thisLength)
        }
    }
    public static func _CommonMethod_setKey(ptr: UInt64, value: KStringPtr): Unit {
        unsafe {
            let value = LibC.mallocCString(value)
            CommonMethod_setKey(ptr, value)
            LibC.free(value)
        }
    }
    public static func _CommonMethod_setRestoreId(ptr: UInt64, value: Float64): Unit {
        unsafe {
            CommonMethod_setRestoreId(ptr, value)
        }
    }
    public static func _CommonMethod_setPadding(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CommonMethod_setPadding(ptr, thisArray, thisLength)
        }
    }
    public static func _CommonMethod_setBackground(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CommonMethod_setBackground(ptr, thisArray, thisLength)
        }
    }
    public static func _CommonMethod_setBindSheet(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CommonMethod_setBindSheet(ptr, thisArray, thisLength)
        }
    }
    public static func _CommonMethod_setBackgroundBlurStyle(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CommonMethod_setBackgroundBlurStyle(ptr, thisArray, thisLength)
        }
    }
    public static func _CommonMethod_setDragPreviewOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CommonMethod_setDragPreviewOptions(ptr, thisArray, thisLength)
        }
    }
    public static func _CommonMethod_setLinearGradient(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CommonMethod_setLinearGradient(ptr, thisArray, thisLength)
        }
    }
    public static func _CommonMethod_setBorder(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CommonMethod_setBorder(ptr, thisArray, thisLength)
        }
    }
    public static func _CommonMethod_setSize(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CommonMethod_setSize(ptr, thisArray, thisLength)
        }
    }
    public static func _CommonMethod_setTransform(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CommonMethod_setTransform(ptr, thisArray, thisLength)
        }
    }
    public static func _CommonMethod_setOnChildTouchTest(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CommonMethod_setOnChildTouchTest(ptr, thisArray, thisLength)
        }
    }
    public static func _CommonMethod_setOnGestureRecognizerJudgeBegin(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CommonMethod_setOnGestureRecognizerJudgeBegin(ptr, thisArray, thisLength)
        }
    }
    public static func _CommonMethod_setOnClick(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32, distanceThreshold: Float64): Unit {
        unsafe {
            CommonMethod_setOnClick(ptr, thisArray, thisLength, distanceThreshold)
        }
    }
    public static func _CommonMethod_setBackgroundColor(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CommonMethod_setBackgroundColor(ptr, thisArray, thisLength)
        }
    }
    public static func _Common_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = Common_construct(id, flags)
            return result
        }
    }
    public static func _CommonInterface_setCommonOptions(ptr: UInt64): Unit {
        unsafe {
            CommonInterface_setCommonOptions(ptr)
        }
    }
    public static func _CommonShapeMethod_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = CommonShapeMethod_construct(id, flags)
            return result
        }
    }
    public static func _CommonShapeMethod_setStroke(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CommonShapeMethod_setStroke(ptr, thisArray, thisLength)
        }
    }
    public static func _ScrollableCommonMethod_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = ScrollableCommonMethod_construct(id, flags)
            return result
        }
    }
    public static func _ScrollableCommonMethod_setScrollBarWidth(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            ScrollableCommonMethod_setScrollBarWidth(ptr, thisArray, thisLength)
        }
    }
    public static func _EmbeddedComponent_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = EmbeddedComponent_construct(id, flags)
            return result
        }
    }
    public static func _EmbeddedComponentInterface_setEmbeddedComponentOptions(ptr: UInt64, loader: KPointer, type_: KInt): Unit {
        unsafe {
            EmbeddedComponentInterface_setEmbeddedComponentOptions(ptr, loader, type_)
        }
    }
    public static func _EmbeddedComponentAttribute_setOnTerminated(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            EmbeddedComponentAttribute_setOnTerminated(ptr, thisArray, thisLength)
        }
    }
    public static func _EmbeddedComponentAttribute_setOnError(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            EmbeddedComponentAttribute_setOnError(ptr, thisArray, thisLength)
        }
    }
    public static func _FormComponent_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = FormComponent_construct(id, flags)
            return result
        }
    }
    public static func _FormComponentInterface_setFormComponentOptions(ptr: UInt64): Unit {
        unsafe {
            FormComponentInterface_setFormComponentOptions(ptr)
        }
    }
    public static func _FormComponentAttribute_setOnAcquired(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            FormComponentAttribute_setOnAcquired(ptr, thisArray, thisLength)
        }
    }
    public static func _GridContainer_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = GridContainer_construct(id, flags)
            return result
        }
    }
    public static func _GridContainerInterface_setGridContainerOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            GridContainerInterface_setGridContainerOptions(ptr, thisArray, thisLength)
        }
    }
    public static func _Image_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = Image_construct(id, flags)
            return result
        }
    }
    public static func _ImageInterface_setImageOptions(ptr: UInt64): Unit {
        unsafe {
            ImageInterface_setImageOptions(ptr)
        }
    }
    public static func _List_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = List_construct(id, flags)
            return result
        }
    }
    public static func _ListInterface_setListOptions(ptr: UInt64): Unit {
        unsafe {
            ListInterface_setListOptions(ptr)
        }
    }
    public static func _ListAttribute_setSomeOptional(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            ListAttribute_setSomeOptional(ptr, thisArray, thisLength)
        }
    }
    public static func _ListAttribute_setOnScrollVisibleContentChange(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            ListAttribute_setOnScrollVisibleContentChange(ptr, thisArray, thisLength)
        }
    }
    public static func _NavDestination_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = NavDestination_construct(id, flags)
            return result
        }
    }
    public static func _NavDestinationInterface_setNavDestinationOptions(ptr: UInt64): Unit {
        unsafe {
            NavDestinationInterface_setNavDestinationOptions(ptr)
        }
    }
    public static func _NavDestinationAttribute_setTitle(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavDestinationAttribute_setTitle(ptr, thisArray, thisLength)
        }
    }
    public static func _NavDestinationAttribute_setHideTitleBar(ptr: UInt64, value: KInt): Unit {
        unsafe {
            NavDestinationAttribute_setHideTitleBar(ptr, value)
        }
    }
    public static func _NavDestinationAttribute_setOnShown(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavDestinationAttribute_setOnShown(ptr, thisArray, thisLength)
        }
    }
    public static func _NavDestinationAttribute_setOnHidden(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavDestinationAttribute_setOnHidden(ptr, thisArray, thisLength)
        }
    }
    public static func _NavDestinationAttribute_setOnBackPressed(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavDestinationAttribute_setOnBackPressed(ptr, thisArray, thisLength)
        }
    }
    public static func _NavDestinationAttribute_setMode(ptr: UInt64, value: KInt): Unit {
        unsafe {
            NavDestinationAttribute_setMode(ptr, value)
        }
    }
    public static func _NavDestinationAttribute_setBackButtonIcon(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavDestinationAttribute_setBackButtonIcon(ptr, thisArray, thisLength)
        }
    }
    public static func _NavDestinationAttribute_setMenus(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavDestinationAttribute_setMenus(ptr, thisArray, thisLength)
        }
    }
    public static func _NavDestinationAttribute_setOnReady(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavDestinationAttribute_setOnReady(ptr, thisArray, thisLength)
        }
    }
    public static func _NavDestinationAttribute_setOnWillAppear(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavDestinationAttribute_setOnWillAppear(ptr, thisArray, thisLength)
        }
    }
    public static func _NavDestinationAttribute_setOnWillDisappear(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavDestinationAttribute_setOnWillDisappear(ptr, thisArray, thisLength)
        }
    }
    public static func _NavDestinationAttribute_setOnWillShow(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavDestinationAttribute_setOnWillShow(ptr, thisArray, thisLength)
        }
    }
    public static func _NavDestinationAttribute_setOnWillHide(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavDestinationAttribute_setOnWillHide(ptr, thisArray, thisLength)
        }
    }
    public static func _NavDestinationAttribute_setIgnoreLayoutSafeArea(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavDestinationAttribute_setIgnoreLayoutSafeArea(ptr, thisArray, thisLength)
        }
    }
    public static func _Navigation_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = Navigation_construct(id, flags)
            return result
        }
    }
    public static func _NavigationInterface_setNavigationOptions(ptr: UInt64, pathInfos: KPointer): Unit {
        unsafe {
            NavigationInterface_setNavigationOptions(ptr, pathInfos)
        }
    }
    public static func _NavigationAttribute_setNavBarWidth(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavigationAttribute_setNavBarWidth(ptr, thisArray, thisLength)
        }
    }
    public static func _NavigationAttribute_setNavBarPosition(ptr: UInt64, value: KInt): Unit {
        unsafe {
            NavigationAttribute_setNavBarPosition(ptr, value)
        }
    }
    public static func _NavigationAttribute_setNavBarWidthRange(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavigationAttribute_setNavBarWidthRange(ptr, thisArray, thisLength)
        }
    }
    public static func _NavigationAttribute_setMinContentWidth(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavigationAttribute_setMinContentWidth(ptr, thisArray, thisLength)
        }
    }
    public static func _NavigationAttribute_setMode(ptr: UInt64, value: KInt): Unit {
        unsafe {
            NavigationAttribute_setMode(ptr, value)
        }
    }
    public static func _NavigationAttribute_setBackButtonIcon(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavigationAttribute_setBackButtonIcon(ptr, thisArray, thisLength)
        }
    }
    public static func _NavigationAttribute_setHideNavBar(ptr: UInt64, value: KInt): Unit {
        unsafe {
            NavigationAttribute_setHideNavBar(ptr, value)
        }
    }
    public static func _NavigationAttribute_setTitle(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavigationAttribute_setTitle(ptr, thisArray, thisLength)
        }
    }
    public static func _NavigationAttribute_setSubTitle(ptr: UInt64, value: KStringPtr): Unit {
        unsafe {
            let value = LibC.mallocCString(value)
            NavigationAttribute_setSubTitle(ptr, value)
            LibC.free(value)
        }
    }
    public static func _NavigationAttribute_setHideTitleBar(ptr: UInt64, value: KInt): Unit {
        unsafe {
            NavigationAttribute_setHideTitleBar(ptr, value)
        }
    }
    public static func _NavigationAttribute_setHideBackButton(ptr: UInt64, value: KInt): Unit {
        unsafe {
            NavigationAttribute_setHideBackButton(ptr, value)
        }
    }
    public static func _NavigationAttribute_setTitleMode(ptr: UInt64, value: KInt): Unit {
        unsafe {
            NavigationAttribute_setTitleMode(ptr, value)
        }
    }
    public static func _NavigationAttribute_setMenus(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavigationAttribute_setMenus(ptr, thisArray, thisLength)
        }
    }
    public static func _NavigationAttribute_setToolBar(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavigationAttribute_setToolBar(ptr, thisArray, thisLength)
        }
    }
    public static func _NavigationAttribute_setToolbarConfiguration(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavigationAttribute_setToolbarConfiguration(ptr, thisArray, thisLength)
        }
    }
    public static func _NavigationAttribute_setHideToolBar(ptr: UInt64, value: KInt): Unit {
        unsafe {
            NavigationAttribute_setHideToolBar(ptr, value)
        }
    }
    public static func _NavigationAttribute_setOnTitleModeChange(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavigationAttribute_setOnTitleModeChange(ptr, thisArray, thisLength)
        }
    }
    public static func _NavigationAttribute_setOnNavBarStateChange(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavigationAttribute_setOnNavBarStateChange(ptr, thisArray, thisLength)
        }
    }
    public static func _NavigationAttribute_setOnNavigationModeChange(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavigationAttribute_setOnNavigationModeChange(ptr, thisArray, thisLength)
        }
    }
    public static func _NavigationAttribute_setNavDestination(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavigationAttribute_setNavDestination(ptr, thisArray, thisLength)
        }
    }
    public static func _NavigationAttribute_setCustomNavContentTransition(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavigationAttribute_setCustomNavContentTransition(ptr, thisArray, thisLength)
        }
    }
    public static func _NavigationAttribute_setIgnoreLayoutSafeArea(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavigationAttribute_setIgnoreLayoutSafeArea(ptr, thisArray, thisLength)
        }
    }
    public static func _NavigationAttribute_setSystemBarStyle(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavigationAttribute_setSystemBarStyle(ptr, thisArray, thisLength)
        }
    }
    public static func _Rect_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = Rect_construct(id, flags)
            return result
        }
    }
    public static func _RectInterface_setRectOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            RectInterface_setRectOptions(ptr, thisArray, thisLength)
        }
    }
    public static func _RectAttribute_setRadiusWidth(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            RectAttribute_setRadiusWidth(ptr, thisArray, thisLength)
        }
    }
    public static func _RectAttribute_setRadiusHeight(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            RectAttribute_setRadiusHeight(ptr, thisArray, thisLength)
        }
    }
    public static func _RectAttribute_setRadius(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            RectAttribute_setRadius(ptr, thisArray, thisLength)
        }
    }
    public static func _Scroll_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = Scroll_construct(id, flags)
            return result
        }
    }
    public static func _ScrollInterface_setScrollOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            ScrollInterface_setScrollOptions(ptr, thisArray, thisLength)
        }
    }
    public static func _SecurityComponentMethod_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = SecurityComponentMethod_construct(id, flags)
            return result
        }
    }
    public static func _Select_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = Select_construct(id, flags)
            return result
        }
    }
    public static func _SelectInterface_setSelectOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            SelectInterface_setSelectOptions(ptr, thisArray, thisLength)
        }
    }
    public static func _SelectAttribute_set_onChangeEvent_selected(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            SelectAttribute_set_onChangeEvent_selected(ptr, thisArray, thisLength)
        }
    }
    public static func _SelectAttribute_set_onChangeEvent_value(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            SelectAttribute_set_onChangeEvent_value(ptr, thisArray, thisLength)
        }
    }
    public static func _Shape_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = Shape_construct(id, flags)
            return result
        }
    }
    public static func _ShapeInterface_setShapeOptions(ptr: UInt64): Unit {
        unsafe {
            ShapeInterface_setShapeOptions(ptr)
        }
    }
    public static func _SideBarContainer_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = SideBarContainer_construct(id, flags)
            return result
        }
    }
    public static func _SideBarContainerInterface_setSideBarContainerOptions(ptr: UInt64): Unit {
        unsafe {
            SideBarContainerInterface_setSideBarContainerOptions(ptr)
        }
    }
    public static func _SideBarContainerAttribute_setMinSideBarWidth0(ptr: UInt64, value: Float64): Unit {
        unsafe {
            SideBarContainerAttribute_setMinSideBarWidth0(ptr, value)
        }
    }
    public static func _SideBarContainerAttribute_setMinSideBarWidth1(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            SideBarContainerAttribute_setMinSideBarWidth1(ptr, thisArray, thisLength)
        }
    }
    public static func _SideBarContainerAttribute_set_onChangeEvent_showSideBar(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            SideBarContainerAttribute_set_onChangeEvent_showSideBar(ptr, thisArray, thisLength)
        }
    }
    public static func _Slider_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = Slider_construct(id, flags)
            return result
        }
    }
    public static func _SliderAttribute_setBlockColor(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            SliderAttribute_setBlockColor(ptr, thisArray, thisLength)
        }
    }
    public static func _SliderAttribute_setTrackColor(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            SliderAttribute_setTrackColor(ptr, thisArray, thisLength)
        }
    }
    public static func _SliderAttribute_setSelectedColor(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            SliderAttribute_setSelectedColor(ptr, thisArray, thisLength)
        }
    }
    public static func _SliderAttribute_setMinLabel(ptr: UInt64, value: KStringPtr): Unit {
        unsafe {
            let value = LibC.mallocCString(value)
            SliderAttribute_setMinLabel(ptr, value)
            LibC.free(value)
        }
    }
    public static func _SliderAttribute_setMaxLabel(ptr: UInt64, value: KStringPtr): Unit {
        unsafe {
            let value = LibC.mallocCString(value)
            SliderAttribute_setMaxLabel(ptr, value)
            LibC.free(value)
        }
    }
    public static func _SliderAttribute_setShowSteps(ptr: UInt64, value: KInt): Unit {
        unsafe {
            SliderAttribute_setShowSteps(ptr, value)
        }
    }
    public static func _SliderAttribute_setShowTips(ptr: UInt64, value: KInt, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            SliderAttribute_setShowTips(ptr, value, thisArray, thisLength)
        }
    }
    public static func _SliderAttribute_set_onChangeEvent_value(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            SliderAttribute_set_onChangeEvent_value(ptr, thisArray, thisLength)
        }
    }
    public static func _BaseSpan_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = BaseSpan_construct(id, flags)
            return result
        }
    }
    public static func _Swiper_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = Swiper_construct(id, flags)
            return result
        }
    }
    public static func _SwiperInterface_setSwiperOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            SwiperInterface_setSwiperOptions(ptr, thisArray, thisLength)
        }
    }
    public static func _SwiperAttribute_setIndex(ptr: UInt64, value: Float64): Unit {
        unsafe {
            SwiperAttribute_setIndex(ptr, value)
        }
    }
    public static func _SwiperAttribute_setIndicator(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            SwiperAttribute_setIndicator(ptr, thisArray, thisLength)
        }
    }
    public static func _SwiperAttribute_set_onChangeEvent_index(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            SwiperAttribute_set_onChangeEvent_index(ptr, thisArray, thisLength)
        }
    }
    public static func _SymbolGlyph_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = SymbolGlyph_construct(id, flags)
            return result
        }
    }
    public static func _SymbolGlyphInterface_setSymbolGlyphOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            SymbolGlyphInterface_setSymbolGlyphOptions(ptr, thisArray, thisLength)
        }
    }
    public static func _SymbolGlyphAttribute_setFontSize(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            SymbolGlyphAttribute_setFontSize(ptr, thisArray, thisLength)
        }
    }
    public static func _TabContent_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = TabContent_construct(id, flags)
            return result
        }
    }
    public static func _TabContentInterface_setTabContentOptions(ptr: UInt64): Unit {
        unsafe {
            TabContentInterface_setTabContentOptions(ptr)
        }
    }
    public static func _TabContentAttribute_setTabBar0(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TabContentAttribute_setTabBar0(ptr, thisArray, thisLength)
        }
    }
    public static func _TabContentAttribute_setTabBar1(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TabContentAttribute_setTabBar1(ptr, thisArray, thisLength)
        }
    }
    public static func _Tabs_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = Tabs_construct(id, flags)
            return result
        }
    }
    public static func _TabsInterface_setTabsOptions(ptr: UInt64): Unit {
        unsafe {
            TabsInterface_setTabsOptions(ptr)
        }
    }
    public static func _TabsAttribute_setBarMode(ptr: UInt64, value: KInt): Unit {
        unsafe {
            TabsAttribute_setBarMode(ptr, value)
        }
    }
    public static func _TabsAttribute_set_onChangeEvent_index(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TabsAttribute_set_onChangeEvent_index(ptr, thisArray, thisLength)
        }
    }
    public static func _Test_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = Test_construct(id, flags)
            return result
        }
    }
    public static func _TestInterface_setTestOptions(ptr: UInt64): Unit {
        unsafe {
            TestInterface_setTestOptions(ptr)
        }
    }
    public static func _TestAttribute_setTestBoolean(ptr: UInt64, value: KInt): Unit {
        unsafe {
            TestAttribute_setTestBoolean(ptr, value)
        }
    }
    public static func _TestAttribute_setTestNumber(ptr: UInt64, value: Float64): Unit {
        unsafe {
            TestAttribute_setTestNumber(ptr, value)
        }
    }
    public static func _TestAttribute_setTestString(ptr: UInt64, value: KStringPtr): Unit {
        unsafe {
            let value = LibC.mallocCString(value)
            TestAttribute_setTestString(ptr, value)
            LibC.free(value)
        }
    }
    public static func _TestAttribute_setTestEnum(ptr: UInt64, value: KInt): Unit {
        unsafe {
            TestAttribute_setTestEnum(ptr, value)
        }
    }
    public static func _TestAttribute_setTestFunction(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestFunction(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestBasicMix(ptr: UInt64, v1: Float64, v2: KStringPtr, v3: Float64): Unit {
        unsafe {
            let v2 = LibC.mallocCString(v2)
            TestAttribute_setTestBasicMix(ptr, v1, v2, v3)
            LibC.free(v2)
        }
    }
    public static func _TestAttribute_setTestBooleanUndefined(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestBooleanUndefined(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestNumberUndefined(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestNumberUndefined(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestStringUndefined(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestStringUndefined(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestEnumUndefined(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestEnumUndefined(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestFunctionUndefined(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestFunctionUndefined(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestUnionNumberEnum(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestUnionNumberEnum(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestUnionBooleanString(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestUnionBooleanString(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestUnionStringNumber(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestUnionStringNumber(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestUnionBooleanStringNumberUndefined(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestUnionBooleanStringNumberUndefined(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestUnionWithGenericArray(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestUnionWithGenericArray(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestUnionWithArrayType(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestUnionWithArrayType(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestBooleanArray(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestBooleanArray(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestNumberArray(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestNumberArray(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestStringArray(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestStringArray(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestEnumArray(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestEnumArray(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestArrayMix(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestArrayMix(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestTupleBooleanNumber(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestTupleBooleanNumber(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestTupleNumberStringEnum(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestTupleNumberStringEnum(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestTupleOptional(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestTupleOptional(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestTupleUnion(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestTupleUnion(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestArrayRefBoolean(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestArrayRefBoolean(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestArrayRefNumber(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestArrayRefNumber(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestBooleanInterface(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestBooleanInterface(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestNumberInterface(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestNumberInterface(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestStringInterface(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestStringInterface(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestUnionInterface(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestUnionInterface(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestUnionOptional(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestUnionOptional(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestTupleInterface(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestTupleInterface(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestOptionInterface(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestOptionInterface(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestArrayRefNumberInterface(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestArrayRefNumberInterface(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestBooleanInterfaceOption(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestBooleanInterfaceOption(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestBooleanInterfaceTuple(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestBooleanInterfaceTuple(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestBooleanInterfaceArray(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestBooleanInterfaceArray(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestBooleanInterfaceArrayRef(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestBooleanInterfaceArrayRef(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestInterfaceMixed(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32, v2: Float64): Unit {
        unsafe {
            TestAttribute_setTestInterfaceMixed(ptr, thisArray, thisLength, v2)
        }
    }
    public static func _TestAttribute_setTestClass(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TestAttribute_setTestClass(ptr, thisArray, thisLength)
        }
    }
    public static func _TestAttribute_setTestClassWithConstructor(ptr: UInt64, value: KPointer): Unit {
        unsafe {
            TestAttribute_setTestClassWithConstructor(ptr, value)
        }
    }
    public static func _TestAttribute_setTestClassWithConstructorAndFields(ptr: UInt64, value: KPointer): Unit {
        unsafe {
            TestAttribute_setTestClassWithConstructorAndFields(ptr, value)
        }
    }
    public static func _TestAttribute_setTestClassWithConstructorAndMethods(ptr: UInt64, value: KPointer): Unit {
        unsafe {
            TestAttribute_setTestClassWithConstructorAndMethods(ptr, value)
        }
    }
    public static func _TestAttribute_setTestClassWithConstructorAndStaticMethods(ptr: UInt64, value: KPointer): Unit {
        unsafe {
            TestAttribute_setTestClassWithConstructorAndStaticMethods(ptr, value)
        }
    }
    public static func _TestAttribute_setTestClassWithConstructorAndFieldsAndMethods(ptr: UInt64, value: KPointer): Unit {
        unsafe {
            TestAttribute_setTestClassWithConstructorAndFieldsAndMethods(ptr, value)
        }
    }
    public static func _TestAttribute_setTestClassWithConstructorAndNonOptionalParams(ptr: UInt64, value: KPointer): Unit {
        unsafe {
            TestAttribute_setTestClassWithConstructorAndNonOptionalParams(ptr, value)
        }
    }
    public static func _TestAttribute_setTestClassWithConstructorAndSomeOptionalParams(ptr: UInt64, value: KPointer): Unit {
        unsafe {
            TestAttribute_setTestClassWithConstructorAndSomeOptionalParams(ptr, value)
        }
    }
    public static func _TestAttribute_setTestClassWithConstructorAndAllOptionalParams(ptr: UInt64, value: KPointer): Unit {
        unsafe {
            TestAttribute_setTestClassWithConstructorAndAllOptionalParams(ptr, value)
        }
    }
    public static func _TestAttribute_setTestClassWithConstructorAndWithoutParams(ptr: UInt64, value: KPointer): Unit {
        unsafe {
            TestAttribute_setTestClassWithConstructorAndWithoutParams(ptr, value)
        }
    }
    public static func _TextInput_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = TextInput_construct(id, flags)
            return result
        }
    }
    public static func _TextInputInterface_setTextInputOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextInputInterface_setTextInputOptions(ptr, thisArray, thisLength)
        }
    }
    public static func _TextInputAttribute_setType(ptr: UInt64, value: KInt): Unit {
        unsafe {
            TextInputAttribute_setType(ptr, value)
        }
    }
    public static func _TextInputAttribute_setContentType(ptr: UInt64, value: KInt): Unit {
        unsafe {
            TextInputAttribute_setContentType(ptr, value)
        }
    }
    public static func _TextInputAttribute_setOnChange(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextInputAttribute_setOnChange(ptr, thisArray, thisLength)
        }
    }
    public static func _TextInputAttribute_setOnEditChanged(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextInputAttribute_setOnEditChanged(ptr, thisArray, thisLength)
        }
    }
    public static func _TextInputAttribute_set_onChangeEvent_text(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextInputAttribute_set_onChangeEvent_text(ptr, thisArray, thisLength)
        }
    }
    public static func _TextPicker_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = TextPicker_construct(id, flags)
            return result
        }
    }
    public static func _TextPickerInterface_setTextPickerOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextPickerInterface_setTextPickerOptions(ptr, thisArray, thisLength)
        }
    }
    public static func _TextPickerAttribute_setDefaultPickerItemHeight(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextPickerAttribute_setDefaultPickerItemHeight(ptr, thisArray, thisLength)
        }
    }
    public static func _TextPickerAttribute_setCanLoop(ptr: UInt64, value: KInt): Unit {
        unsafe {
            TextPickerAttribute_setCanLoop(ptr, value)
        }
    }
    public static func _TextPickerAttribute_setOnAccept(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextPickerAttribute_setOnAccept(ptr, thisArray, thisLength)
        }
    }
    public static func _TextPickerAttribute_setOnCancel(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextPickerAttribute_setOnCancel(ptr, thisArray, thisLength)
        }
    }
    public static func _TextPickerAttribute_setOnChange(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextPickerAttribute_setOnChange(ptr, thisArray, thisLength)
        }
    }
    public static func _TextPickerAttribute_setSelectedIndex(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextPickerAttribute_setSelectedIndex(ptr, thisArray, thisLength)
        }
    }
    public static func _TextPickerAttribute_setDivider(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextPickerAttribute_setDivider(ptr, thisArray, thisLength)
        }
    }
    public static func _TextPickerAttribute_setGradientHeight(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextPickerAttribute_setGradientHeight(ptr, thisArray, thisLength)
        }
    }
    public static func _TextPickerAttribute_set_onChangeEvent_selected(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextPickerAttribute_set_onChangeEvent_selected(ptr, thisArray, thisLength)
        }
    }
    public static func _TextPickerAttribute_set_onChangeEvent_value(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextPickerAttribute_set_onChangeEvent_value(ptr, thisArray, thisLength)
        }
    }
    public static func _Text_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = Text_construct(id, flags)
            return result
        }
    }
    public static func _TextInterface_setTextOptions(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextInterface_setTextOptions(ptr, thisArray, thisLength)
        }
    }
    public static func _TextAttribute_setFont(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextAttribute_setFont(ptr, thisArray, thisLength)
        }
    }
    public static func _TextAttribute_setFontColor(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            TextAttribute_setFontColor(ptr, thisArray, thisLength)
        }
    }
    public static func _UIExtensionComponent_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = UIExtensionComponent_construct(id, flags)
            return result
        }
    }
    public static func _UIExtensionComponentInterface_setUIExtensionComponentOptions(ptr: UInt64, want: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            UIExtensionComponentInterface_setUIExtensionComponentOptions(ptr, want, thisArray, thisLength)
        }
    }
    public static func _UIExtensionComponentAttribute_setOnRemoteReady(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            UIExtensionComponentAttribute_setOnRemoteReady(ptr, thisArray, thisLength)
        }
    }
    public static func _UIExtensionComponentAttribute_setOnReceive(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            UIExtensionComponentAttribute_setOnReceive(ptr, thisArray, thisLength)
        }
    }
    public static func _UIExtensionComponentAttribute_setOnResult(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            UIExtensionComponentAttribute_setOnResult(ptr, thisArray, thisLength)
        }
    }
    public static func _UIExtensionComponentAttribute_setOnRelease(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            UIExtensionComponentAttribute_setOnRelease(ptr, thisArray, thisLength)
        }
    }
    public static func _UIExtensionComponentAttribute_setOnError(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            UIExtensionComponentAttribute_setOnError(ptr, thisArray, thisLength)
        }
    }
    public static func _UIExtensionComponentAttribute_setOnTerminated(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            UIExtensionComponentAttribute_setOnTerminated(ptr, thisArray, thisLength)
        }
    }
    public static func _Vector_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = Vector_construct(id, flags)
            return result
        }
    }
    public static func _VectorInterface_setVectorOptions(ptr: UInt64): Unit {
        unsafe {
            VectorInterface_setVectorOptions(ptr)
        }
    }
    public static func _VectorAttribute_setTestVector1(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            VectorAttribute_setTestVector1(ptr, thisArray, thisLength)
        }
    }
    public static func _VectorAttribute_setTestVector2(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            VectorAttribute_setTestVector2(ptr, thisArray, thisLength)
        }
    }
    public static func _VectorAttribute_setTestUnionVector1Number(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            VectorAttribute_setTestUnionVector1Number(ptr, thisArray, thisLength)
        }
    }
    public static func _VectorAttribute_setTestUnionVector2Number(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            VectorAttribute_setTestUnionVector2Number(ptr, thisArray, thisLength)
        }
    }
    public static func _Web_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = Web_construct(id, flags)
            return result
        }
    }
    public static func _WebInterface_setWebOptions(ptr: UInt64): Unit {
        unsafe {
            WebInterface_setWebOptions(ptr)
        }
    }
    public static func _WebAttribute_setOnNativeEmbedLifecycleChange(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            WebAttribute_setOnNativeEmbedLifecycleChange(ptr, thisArray, thisLength)
        }
    }
    public static func _WebAttribute_setOnRenderExited0(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            WebAttribute_setOnRenderExited0(ptr, thisArray, thisLength)
        }
    }
    public static func _WebAttribute_setOnRenderExited1(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            WebAttribute_setOnRenderExited1(ptr, thisArray, thisLength)
        }
    }
    public static func _WebAttribute_setOnHttpErrorReceive(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            WebAttribute_setOnHttpErrorReceive(ptr, thisArray, thisLength)
        }
    }
    public static func _Root_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = Root_construct(id, flags)
            return result
        }
    }
    public static func _ComponentRoot_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = ComponentRoot_construct(id, flags)
            return result
        }
    }
    public static func _CustomBuilderRoot_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = CustomBuilderRoot_construct(id, flags)
            return result
        }
    }
    public static func _ConditionScope_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = ConditionScope_construct(id, flags)
            return result
        }
    }
    public static func _CustomLayoutRoot_construct(id: KInt, flags: KInt): UInt64 {
        unsafe {
            let result = CustomLayoutRoot_construct(id, flags)
            return result
        }
    }
    public static func _CustomLayoutRoot_setSubscribeOnMeasureSize(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CustomLayoutRoot_setSubscribeOnMeasureSize(ptr, thisArray, thisLength)
        }
    }
    public static func _CustomLayoutRoot_setSubscribeOnPlaceChildren(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CustomLayoutRoot_setSubscribeOnPlaceChildren(ptr, thisArray, thisLength)
        }
    }
    public static func _BaseEvent_construct(): UInt64 {
        unsafe {
            let result = BaseEvent_construct()
            return result
        }
    }
    public static func _BaseEvent_getFinalizer(): UInt64 {
        unsafe {
            let result = BaseEvent_getFinalizer()
            return result
        }
    }
    public static func _BaseEvent_getModifierKeyState(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Bool {
        unsafe {
            let result = BaseEvent_getModifierKeyState(ptr, thisArray, thisLength)
            return result
        }
    }
    public static func _BaseEvent_getSource(ptr: UInt64): Int32 {
        unsafe {
            let result = BaseEvent_getSource(ptr)
            return result
        }
    }
    public static func _BaseEvent_setSource(ptr: UInt64, source: KInt): Unit {
        unsafe {
            BaseEvent_setSource(ptr, source)
        }
    }
    public static func _BaseEvent_getAxisHorizontal(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = BaseEvent_getAxisHorizontal(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _BaseEvent_setAxisHorizontal(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            BaseEvent_setAxisHorizontal(ptr, thisArray, thisLength)
        }
    }
    public static func _BaseEvent_getAxisVertical(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = BaseEvent_getAxisVertical(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _BaseEvent_setAxisVertical(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            BaseEvent_setAxisVertical(ptr, thisArray, thisLength)
        }
    }
    public static func _BaseEvent_getPressure(ptr: UInt64): Float64 {
        unsafe {
            let result = BaseEvent_getPressure(ptr)
            return result
        }
    }
    public static func _BaseEvent_setPressure(ptr: UInt64, pressure: Float64): Unit {
        unsafe {
            BaseEvent_setPressure(ptr, pressure)
        }
    }
    public static func _BaseEvent_getTiltX(ptr: UInt64): Float64 {
        unsafe {
            let result = BaseEvent_getTiltX(ptr)
            return result
        }
    }
    public static func _BaseEvent_setTiltX(ptr: UInt64, tiltX: Float64): Unit {
        unsafe {
            BaseEvent_setTiltX(ptr, tiltX)
        }
    }
    public static func _BaseEvent_getSourceTool(ptr: UInt64): Int32 {
        unsafe {
            let result = BaseEvent_getSourceTool(ptr)
            return result
        }
    }
    public static func _BaseEvent_setSourceTool(ptr: UInt64, sourceTool: KInt): Unit {
        unsafe {
            BaseEvent_setSourceTool(ptr, sourceTool)
        }
    }
    public static func _BaseEvent_getDeviceId(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = BaseEvent_getDeviceId(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _BaseEvent_setDeviceId(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            BaseEvent_setDeviceId(ptr, thisArray, thisLength)
        }
    }
    public static func _BaseEvent_getTargetDisplayId(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = BaseEvent_getTargetDisplayId(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _BaseEvent_setTargetDisplayId(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            BaseEvent_setTargetDisplayId(ptr, thisArray, thisLength)
        }
    }
    public static func _BaseGestureEvent_construct(): UInt64 {
        unsafe {
            let result = BaseGestureEvent_construct()
            return result
        }
    }
    public static func _BaseGestureEvent_getFinalizer(): UInt64 {
        unsafe {
            let result = BaseGestureEvent_getFinalizer()
            return result
        }
    }
    public static func _BaseGestureEvent_getFingerList(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = BaseGestureEvent_getFingerList(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _BaseGestureEvent_setFingerList(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            BaseGestureEvent_setFingerList(ptr, thisArray, thisLength)
        }
    }
    public static func _CanvasGradient_construct(): UInt64 {
        unsafe {
            let result = CanvasGradient_construct()
            return result
        }
    }
    public static func _CanvasGradient_getFinalizer(): UInt64 {
        unsafe {
            let result = CanvasGradient_getFinalizer()
            return result
        }
    }
    public static func _CanvasGradient_addColorStop(ptr: UInt64, offset: Float64, color: KStringPtr): Unit {
        unsafe {
            let color = LibC.mallocCString(color)
            CanvasGradient_addColorStop(ptr, offset, color)
            LibC.free(color)
        }
    }
    public static func _CanvasPath_construct(): UInt64 {
        unsafe {
            let result = CanvasPath_construct()
            return result
        }
    }
    public static func _CanvasPath_getFinalizer(): UInt64 {
        unsafe {
            let result = CanvasPath_getFinalizer()
            return result
        }
    }
    public static func _CanvasPath_rect(ptr: UInt64, x: Float64, y: Float64, w: Float64, h: Float64): Unit {
        unsafe {
            CanvasPath_rect(ptr, x, y, w, h)
        }
    }
    public static func _CanvasPath_arc(ptr: UInt64, x: Float64, y: Float64, radius: Float64, startAngle: Float64, endAngle: Float64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CanvasPath_arc(ptr, x, y, radius, startAngle, endAngle, thisArray, thisLength)
        }
    }
    public static func _CanvasPath_closePath(ptr: UInt64): Unit {
        unsafe {
            CanvasPath_closePath(ptr)
        }
    }
    public static func _CanvasPattern_construct(): UInt64 {
        unsafe {
            let result = CanvasPattern_construct()
            return result
        }
    }
    public static func _CanvasPattern_getFinalizer(): UInt64 {
        unsafe {
            let result = CanvasPattern_getFinalizer()
            return result
        }
    }
    public static func _CanvasPattern_setTransform(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CanvasPattern_setTransform(ptr, thisArray, thisLength)
        }
    }
    public static func _CanvasRenderer_construct(): UInt64 {
        unsafe {
            let result = CanvasRenderer_construct()
            return result
        }
    }
    public static func _CanvasRenderer_getFinalizer(): UInt64 {
        unsafe {
            let result = CanvasRenderer_getFinalizer()
            return result
        }
    }
    public static func _CanvasRenderer_beginPath(ptr: UInt64): Unit {
        unsafe {
            CanvasRenderer_beginPath(ptr)
        }
    }
    public static func _CanvasRenderer_clip(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CanvasRenderer_clip(ptr, thisArray, thisLength)
        }
    }
    public static func _CanvasRenderer_reset(ptr: UInt64): Unit {
        unsafe {
            CanvasRenderer_reset(ptr)
        }
    }
    public static func _CanvasRenderer_putImageData0(ptr: UInt64, imagedata: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CanvasRenderer_putImageData0(ptr, imagedata, thisArray, thisLength)
        }
    }
    public static func _CanvasRenderer_putImageData1(ptr: UInt64, imagedata: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CanvasRenderer_putImageData1(ptr, imagedata, thisArray, thisLength)
        }
    }
    public static func _CanvasRenderer_getGlobalAlpha(ptr: UInt64): Float64 {
        unsafe {
            let result = CanvasRenderer_getGlobalAlpha(ptr)
            return result
        }
    }
    public static func _CanvasRenderer_setGlobalAlpha(ptr: UInt64, globalAlpha: Float64): Unit {
        unsafe {
            CanvasRenderer_setGlobalAlpha(ptr, globalAlpha)
        }
    }
    public static func _CanvasRenderer_getGlobalCompositeOperation(ptr: UInt64): String {
        unsafe {
            let result = CanvasRenderer_getGlobalCompositeOperation(ptr)
            return result.toString()
        }
    }
    public static func _CanvasRenderer_setGlobalCompositeOperation(ptr: UInt64, globalCompositeOperation: KStringPtr): Unit {
        unsafe {
            let globalCompositeOperation = LibC.mallocCString(globalCompositeOperation)
            CanvasRenderer_setGlobalCompositeOperation(ptr, globalCompositeOperation)
            LibC.free(globalCompositeOperation)
        }
    }
    public static func _CanvasRenderer_getFillStyle(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = CanvasRenderer_getFillStyle(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _CanvasRenderer_setFillStyle(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CanvasRenderer_setFillStyle(ptr, thisArray, thisLength)
        }
    }
    public static func _CanvasRenderingContext2D_construct(thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = CanvasRenderingContext2D_construct(thisArray, thisLength)
            return result
        }
    }
    public static func _CanvasRenderingContext2D_getFinalizer(): UInt64 {
        unsafe {
            let result = CanvasRenderingContext2D_getFinalizer()
            return result
        }
    }
    public static func _CanvasRenderingContext2D_stopImageAnalyzer(ptr: UInt64): Unit {
        unsafe {
            CanvasRenderingContext2D_stopImageAnalyzer(ptr)
        }
    }
    public static func _CanvasRenderingContext2D_of(): UInt64 {
        unsafe {
            let result = CanvasRenderingContext2D_of()
            return result
        }
    }
    public static func _CanvasRenderingContext2D_getHeight(ptr: UInt64): Float64 {
        unsafe {
            let result = CanvasRenderingContext2D_getHeight(ptr)
            return result
        }
    }
    public static func _CanvasRenderingContext2D_getWidth(ptr: UInt64): Float64 {
        unsafe {
            let result = CanvasRenderingContext2D_getWidth(ptr)
            return result
        }
    }
    public static func _ClassNoConstructorAndStaticMethodsDTS_method(valNumber: Float64, valString: KStringPtr): Unit {
        unsafe {
            let valString = LibC.mallocCString(valString)
            ClassNoConstructorAndStaticMethodsDTS_method(valNumber, valString)
            LibC.free(valString)
        }
    }
    public static func _ClassNoConstructorAndStaticMethodsDTS_method2(valNumber: Float64, valString: KStringPtr): Unit {
        unsafe {
            let valString = LibC.mallocCString(valString)
            ClassNoConstructorAndStaticMethodsDTS_method2(valNumber, valString)
            LibC.free(valString)
        }
    }
    public static func _ClassWithConstructorAndAllOptionalParamsDTS_construct(thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = ClassWithConstructorAndAllOptionalParamsDTS_construct(thisArray, thisLength)
            return result
        }
    }
    public static func _ClassWithConstructorAndAllOptionalParamsDTS_getFinalizer(): UInt64 {
        unsafe {
            let result = ClassWithConstructorAndAllOptionalParamsDTS_getFinalizer()
            return result
        }
    }
    public static func _ClassWithConstructorAndAllOptionalParamsDTS_of(thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = ClassWithConstructorAndAllOptionalParamsDTS_of(thisArray, thisLength)
            return result
        }
    }
    public static func _ClassWithConstructorAndAllOptionalParamsDTS_method(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            ClassWithConstructorAndAllOptionalParamsDTS_method(ptr, thisArray, thisLength)
        }
    }
    public static func _ClassWithConstructorAndFieldsAndMethodsDTS_construct(valNumber: Float64, valBoolean: KInt): UInt64 {
        unsafe {
            let result = ClassWithConstructorAndFieldsAndMethodsDTS_construct(valNumber, valBoolean)
            return result
        }
    }
    public static func _ClassWithConstructorAndFieldsAndMethodsDTS_getFinalizer(): UInt64 {
        unsafe {
            let result = ClassWithConstructorAndFieldsAndMethodsDTS_getFinalizer()
            return result
        }
    }
    public static func _ClassWithConstructorAndFieldsAndMethodsDTS_method(ptr: UInt64, valNumber: Float64, valString: KStringPtr): Unit {
        unsafe {
            let valString = LibC.mallocCString(valString)
            ClassWithConstructorAndFieldsAndMethodsDTS_method(ptr, valNumber, valString)
            LibC.free(valString)
        }
    }
    public static func _ClassWithConstructorAndFieldsAndMethodsDTS_getValNumber(ptr: UInt64): Float64 {
        unsafe {
            let result = ClassWithConstructorAndFieldsAndMethodsDTS_getValNumber(ptr)
            return result
        }
    }
    public static func _ClassWithConstructorAndFieldsAndMethodsDTS_setValNumber(ptr: UInt64, valNumber: Float64): Unit {
        unsafe {
            ClassWithConstructorAndFieldsAndMethodsDTS_setValNumber(ptr, valNumber)
        }
    }
    public static func _ClassWithConstructorAndFieldsAndMethodsDTS_getValBoolean(ptr: UInt64): Bool {
        unsafe {
            let result = ClassWithConstructorAndFieldsAndMethodsDTS_getValBoolean(ptr)
            return result
        }
    }
    public static func _ClassWithConstructorAndFieldsAndMethodsDTS_setValBoolean(ptr: UInt64, valBoolean: KInt): Unit {
        unsafe {
            ClassWithConstructorAndFieldsAndMethodsDTS_setValBoolean(ptr, valBoolean)
        }
    }
    public static func _ClassWithConstructorAndFieldsDTS_construct(valNumber: Float64, valBoolean: KInt): UInt64 {
        unsafe {
            let result = ClassWithConstructorAndFieldsDTS_construct(valNumber, valBoolean)
            return result
        }
    }
    public static func _ClassWithConstructorAndFieldsDTS_getFinalizer(): UInt64 {
        unsafe {
            let result = ClassWithConstructorAndFieldsDTS_getFinalizer()
            return result
        }
    }
    public static func _ClassWithConstructorAndFieldsDTS_getValNumber(ptr: UInt64): Float64 {
        unsafe {
            let result = ClassWithConstructorAndFieldsDTS_getValNumber(ptr)
            return result
        }
    }
    public static func _ClassWithConstructorAndFieldsDTS_setValNumber(ptr: UInt64, valNumber: Float64): Unit {
        unsafe {
            ClassWithConstructorAndFieldsDTS_setValNumber(ptr, valNumber)
        }
    }
    public static func _ClassWithConstructorAndFieldsDTS_getValBoolean(ptr: UInt64): Bool {
        unsafe {
            let result = ClassWithConstructorAndFieldsDTS_getValBoolean(ptr)
            return result
        }
    }
    public static func _ClassWithConstructorAndFieldsDTS_setValBoolean(ptr: UInt64, valBoolean: KInt): Unit {
        unsafe {
            ClassWithConstructorAndFieldsDTS_setValBoolean(ptr, valBoolean)
        }
    }
    public static func _ClassWithConstructorAndMethodsDTS_construct(valNumber: Float64, valString: KStringPtr): UInt64 {
        unsafe {
            let valString = LibC.mallocCString(valString)
            let result = ClassWithConstructorAndMethodsDTS_construct(valNumber, valString)
            LibC.free(valString)
            return result
        }
    }
    public static func _ClassWithConstructorAndMethodsDTS_getFinalizer(): UInt64 {
        unsafe {
            let result = ClassWithConstructorAndMethodsDTS_getFinalizer()
            return result
        }
    }
    public static func _ClassWithConstructorAndMethodsDTS_method(ptr: UInt64, valNumber: Float64, valString: KStringPtr): Unit {
        unsafe {
            let valString = LibC.mallocCString(valString)
            ClassWithConstructorAndMethodsDTS_method(ptr, valNumber, valString)
            LibC.free(valString)
        }
    }
    public static func _ClassWithConstructorAndNonOptionalParamsDTS_construct(valNumber: Float64, valString: KStringPtr): UInt64 {
        unsafe {
            let valString = LibC.mallocCString(valString)
            let result = ClassWithConstructorAndNonOptionalParamsDTS_construct(valNumber, valString)
            LibC.free(valString)
            return result
        }
    }
    public static func _ClassWithConstructorAndNonOptionalParamsDTS_getFinalizer(): UInt64 {
        unsafe {
            let result = ClassWithConstructorAndNonOptionalParamsDTS_getFinalizer()
            return result
        }
    }
    public static func _ClassWithConstructorAndNonOptionalParamsDTS_of(valNumber: Float64, valString: KStringPtr): UInt64 {
        unsafe {
            let valString = LibC.mallocCString(valString)
            let result = ClassWithConstructorAndNonOptionalParamsDTS_of(valNumber, valString)
            LibC.free(valString)
            return result
        }
    }
    public static func _ClassWithConstructorAndNonOptionalParamsDTS_method(ptr: UInt64, valBoolean: KInt, valString: KStringPtr): Unit {
        unsafe {
            let valString = LibC.mallocCString(valString)
            ClassWithConstructorAndNonOptionalParamsDTS_method(ptr, valBoolean, valString)
            LibC.free(valString)
        }
    }
    public static func _ClassWithConstructorAndSomeOptionalParamsDTS_construct(valNumber: Float64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = ClassWithConstructorAndSomeOptionalParamsDTS_construct(valNumber, thisArray, thisLength)
            return result
        }
    }
    public static func _ClassWithConstructorAndSomeOptionalParamsDTS_getFinalizer(): UInt64 {
        unsafe {
            let result = ClassWithConstructorAndSomeOptionalParamsDTS_getFinalizer()
            return result
        }
    }
    public static func _ClassWithConstructorAndSomeOptionalParamsDTS_of(valNumber: Float64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = ClassWithConstructorAndSomeOptionalParamsDTS_of(valNumber, thisArray, thisLength)
            return result
        }
    }
    public static func _ClassWithConstructorAndSomeOptionalParamsDTS_method(ptr: UInt64, valBoolean: KInt, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            ClassWithConstructorAndSomeOptionalParamsDTS_method(ptr, valBoolean, thisArray, thisLength)
        }
    }
    public static func _ClassWithConstructorAndStaticMethodsDTS_construct(valNumber: Float64, valString: KStringPtr): UInt64 {
        unsafe {
            let valString = LibC.mallocCString(valString)
            let result = ClassWithConstructorAndStaticMethodsDTS_construct(valNumber, valString)
            LibC.free(valString)
            return result
        }
    }
    public static func _ClassWithConstructorAndStaticMethodsDTS_getFinalizer(): UInt64 {
        unsafe {
            let result = ClassWithConstructorAndStaticMethodsDTS_getFinalizer()
            return result
        }
    }
    public static func _ClassWithConstructorAndStaticMethodsDTS_of(valNumber: Float64, valString: KStringPtr): UInt64 {
        unsafe {
            let valString = LibC.mallocCString(valString)
            let result = ClassWithConstructorAndStaticMethodsDTS_of(valNumber, valString)
            LibC.free(valString)
            return result
        }
    }
    public static func _ClassWithConstructorAndWithoutParamsDTS_construct(): UInt64 {
        unsafe {
            let result = ClassWithConstructorAndWithoutParamsDTS_construct()
            return result
        }
    }
    public static func _ClassWithConstructorAndWithoutParamsDTS_getFinalizer(): UInt64 {
        unsafe {
            let result = ClassWithConstructorAndWithoutParamsDTS_getFinalizer()
            return result
        }
    }
    public static func _ClassWithConstructorAndWithoutParamsDTS_of(): UInt64 {
        unsafe {
            let result = ClassWithConstructorAndWithoutParamsDTS_of()
            return result
        }
    }
    public static func _ClassWithConstructorAndWithoutParamsDTS_method(ptr: UInt64): Unit {
        unsafe {
            ClassWithConstructorAndWithoutParamsDTS_method(ptr)
        }
    }
    public static func _ClassWithConstructorDTS_construct(valNumber: Float64, valString: KStringPtr): UInt64 {
        unsafe {
            let valString = LibC.mallocCString(valString)
            let result = ClassWithConstructorDTS_construct(valNumber, valString)
            LibC.free(valString)
            return result
        }
    }
    public static func _ClassWithConstructorDTS_getFinalizer(): UInt64 {
        unsafe {
            let result = ClassWithConstructorDTS_getFinalizer()
            return result
        }
    }
    public static func _ClickEvent_construct(): UInt64 {
        unsafe {
            let result = ClickEvent_construct()
            return result
        }
    }
    public static func _ClickEvent_getFinalizer(): UInt64 {
        unsafe {
            let result = ClickEvent_getFinalizer()
            return result
        }
    }
    public static func _ClickEvent_getDisplayX(ptr: UInt64): Float64 {
        unsafe {
            let result = ClickEvent_getDisplayX(ptr)
            return result
        }
    }
    public static func _ClickEvent_setDisplayX(ptr: UInt64, displayX: Float64): Unit {
        unsafe {
            ClickEvent_setDisplayX(ptr, displayX)
        }
    }
    public static func _ClickEvent_getDisplayY(ptr: UInt64): Float64 {
        unsafe {
            let result = ClickEvent_getDisplayY(ptr)
            return result
        }
    }
    public static func _ClickEvent_setDisplayY(ptr: UInt64, displayY: Float64): Unit {
        unsafe {
            ClickEvent_setDisplayY(ptr, displayY)
        }
    }
    public static func _ClickEvent_getWindowX(ptr: UInt64): Float64 {
        unsafe {
            let result = ClickEvent_getWindowX(ptr)
            return result
        }
    }
    public static func _ClickEvent_setWindowX(ptr: UInt64, windowX: Float64): Unit {
        unsafe {
            ClickEvent_setWindowX(ptr, windowX)
        }
    }
    public static func _ClickEvent_getWindowY(ptr: UInt64): Float64 {
        unsafe {
            let result = ClickEvent_getWindowY(ptr)
            return result
        }
    }
    public static func _ClickEvent_setWindowY(ptr: UInt64, windowY: Float64): Unit {
        unsafe {
            ClickEvent_setWindowY(ptr, windowY)
        }
    }
    public static func _ClickEvent_getScreenX(ptr: UInt64): Float64 {
        unsafe {
            let result = ClickEvent_getScreenX(ptr)
            return result
        }
    }
    public static func _ClickEvent_setScreenX(ptr: UInt64, screenX: Float64): Unit {
        unsafe {
            ClickEvent_setScreenX(ptr, screenX)
        }
    }
    public static func _ClickEvent_getScreenY(ptr: UInt64): Float64 {
        unsafe {
            let result = ClickEvent_getScreenY(ptr)
            return result
        }
    }
    public static func _ClickEvent_setScreenY(ptr: UInt64, screenY: Float64): Unit {
        unsafe {
            ClickEvent_setScreenY(ptr, screenY)
        }
    }
    public static func _ClickEvent_getX(ptr: UInt64): Float64 {
        unsafe {
            let result = ClickEvent_getX(ptr)
            return result
        }
    }
    public static func _ClickEvent_setX(ptr: UInt64, x: Float64): Unit {
        unsafe {
            ClickEvent_setX(ptr, x)
        }
    }
    public static func _ClickEvent_getY(ptr: UInt64): Float64 {
        unsafe {
            let result = ClickEvent_getY(ptr)
            return result
        }
    }
    public static func _ClickEvent_setY(ptr: UInt64, y: Float64): Unit {
        unsafe {
            ClickEvent_setY(ptr, y)
        }
    }
    public static func _ClickEvent_getPreventDefault(ptr: UInt64): UInt64 {
        unsafe {
            let result = ClickEvent_getPreventDefault(ptr)
            return result
        }
    }
    public static func _ClickEvent_setPreventDefault(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            ClickEvent_setPreventDefault(ptr, thisArray, thisLength)
        }
    }
    public static func _ColorFilter_construct(thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = ColorFilter_construct(thisArray, thisLength)
            return result
        }
    }
    public static func _ColorFilter_getFinalizer(): UInt64 {
        unsafe {
            let result = ColorFilter_getFinalizer()
            return result
        }
    }
    public static func _CustomDialogController_construct(thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = CustomDialogController_construct(thisArray, thisLength)
            return result
        }
    }
    public static func _CustomDialogController_getFinalizer(): UInt64 {
        unsafe {
            let result = CustomDialogController_getFinalizer()
            return result
        }
    }
    public static func _CustomDialogController_open(ptr: UInt64): Unit {
        unsafe {
            CustomDialogController_open(ptr)
        }
    }
    public static func _CustomDialogController_close(ptr: UInt64): Unit {
        unsafe {
            CustomDialogController_close(ptr)
        }
    }
    public static func _CustomSpan_construct(): UInt64 {
        unsafe {
            let result = CustomSpan_construct()
            return result
        }
    }
    public static func _CustomSpan_getFinalizer(): UInt64 {
        unsafe {
            let result = CustomSpan_getFinalizer()
            return result
        }
    }
    public static func _CustomSpan_invalidate(ptr: UInt64): Unit {
        unsafe {
            CustomSpan_invalidate(ptr)
        }
    }
    public static func _CustomSpan_getOnMeasure(ptr: UInt64): UInt64 {
        unsafe {
            let result = CustomSpan_getOnMeasure(ptr)
            return result
        }
    }
    public static func _CustomSpan_setOnMeasure(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CustomSpan_setOnMeasure(ptr, thisArray, thisLength)
        }
    }
    public static func _CustomSpan_getOnDraw(ptr: UInt64): UInt64 {
        unsafe {
            let result = CustomSpan_getOnDraw(ptr)
            return result
        }
    }
    public static func _CustomSpan_setOnDraw(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            CustomSpan_setOnDraw(ptr, thisArray, thisLength)
        }
    }
    public static func _DrawingRenderingContext_construct(thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = DrawingRenderingContext_construct(thisArray, thisLength)
            return result
        }
    }
    public static func _DrawingRenderingContext_getFinalizer(): UInt64 {
        unsafe {
            let result = DrawingRenderingContext_getFinalizer()
            return result
        }
    }
    public static func _DrawingRenderingContext_invalidate(ptr: UInt64): Unit {
        unsafe {
            DrawingRenderingContext_invalidate(ptr)
        }
    }
    public static func _DrawingRenderingContext_getSize(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = DrawingRenderingContext_getSize(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _DrawingRenderingContext_getCanvas(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = DrawingRenderingContext_getCanvas(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _DrawModifier_construct(): UInt64 {
        unsafe {
            let result = DrawModifier_construct()
            return result
        }
    }
    public static func _DrawModifier_getFinalizer(): UInt64 {
        unsafe {
            let result = DrawModifier_getFinalizer()
            return result
        }
    }
    public static func _DrawModifier_invalidate(ptr: UInt64): Unit {
        unsafe {
            DrawModifier_invalidate(ptr)
        }
    }
    public static func _DrawModifier_getDrawBehind(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = DrawModifier_getDrawBehind(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _DrawModifier_setDrawBehind(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            DrawModifier_setDrawBehind(ptr, thisArray, thisLength)
        }
    }
    public static func _DrawModifier_getDrawContent(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = DrawModifier_getDrawContent(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _DrawModifier_setDrawContent(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            DrawModifier_setDrawContent(ptr, thisArray, thisLength)
        }
    }
    public static func _DrawModifier_getDrawFront(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = DrawModifier_getDrawFront(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _DrawModifier_setDrawFront(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            DrawModifier_setDrawFront(ptr, thisArray, thisLength)
        }
    }
    public static func _EventEmulator_emitClickEvent(node: KPointer, event: KPointer): Unit {
        unsafe {
            EventEmulator_emitClickEvent(node, event)
        }
    }
    public static func _EventEmulator_emitTextInputEvent(node: KPointer, text: KStringPtr): Unit {
        unsafe {
            let text = LibC.mallocCString(text)
            EventEmulator_emitTextInputEvent(node, text)
            LibC.free(text)
        }
    }
    public static func _EventTargetInfo_construct(): UInt64 {
        unsafe {
            let result = EventTargetInfo_construct()
            return result
        }
    }
    public static func _EventTargetInfo_getFinalizer(): UInt64 {
        unsafe {
            let result = EventTargetInfo_getFinalizer()
            return result
        }
    }
    public static func _EventTargetInfo_getId(ptr: UInt64): String {
        unsafe {
            let result = EventTargetInfo_getId(ptr)
            return result.toString()
        }
    }
    public static func _GestureRecognizer_construct(): UInt64 {
        unsafe {
            let result = GestureRecognizer_construct()
            return result
        }
    }
    public static func _GestureRecognizer_getFinalizer(): UInt64 {
        unsafe {
            let result = GestureRecognizer_getFinalizer()
            return result
        }
    }
    public static func _GestureRecognizer_getTag(ptr: UInt64): String {
        unsafe {
            let result = GestureRecognizer_getTag(ptr)
            return result.toString()
        }
    }
    public static func _GestureRecognizer_getType(ptr: UInt64): Int32 {
        unsafe {
            let result = GestureRecognizer_getType(ptr)
            return result
        }
    }
    public static func _GestureRecognizer_isBuiltIn(ptr: UInt64): Bool {
        unsafe {
            let result = GestureRecognizer_isBuiltIn(ptr)
            return result
        }
    }
    public static func _GestureRecognizer_setEnabled(ptr: UInt64, isEnabled: KInt): Unit {
        unsafe {
            GestureRecognizer_setEnabled(ptr, isEnabled)
        }
    }
    public static func _GestureRecognizer_isEnabled(ptr: UInt64): Bool {
        unsafe {
            let result = GestureRecognizer_isEnabled(ptr)
            return result
        }
    }
    public static func _GestureRecognizer_getState(ptr: UInt64): Int32 {
        unsafe {
            let result = GestureRecognizer_getState(ptr)
            return result
        }
    }
    public static func _GestureRecognizer_getEventTargetInfo(ptr: UInt64): UInt64 {
        unsafe {
            let result = GestureRecognizer_getEventTargetInfo(ptr)
            return result
        }
    }
    public static func _ICurve_construct(): UInt64 {
        unsafe {
            let result = ICurve_construct()
            return result
        }
    }
    public static func _ICurve_getFinalizer(): UInt64 {
        unsafe {
            let result = ICurve_getFinalizer()
            return result
        }
    }
    public static func _ICurve_interpolate(ptr: UInt64, fraction: Float64): Float64 {
        unsafe {
            let result = ICurve_interpolate(ptr, fraction)
            return result
        }
    }
    public static func _image_PixelMap_construct(): UInt64 {
        unsafe {
            let result = image_PixelMap_construct()
            return result
        }
    }
    public static func _image_PixelMap_getFinalizer(): UInt64 {
        unsafe {
            let result = image_PixelMap_getFinalizer()
            return result
        }
    }
    public static func _ImageBitmap_construct0(src: KStringPtr): UInt64 {
        unsafe {
            let src = LibC.mallocCString(src)
            let result = ImageBitmap_construct0(src)
            LibC.free(src)
            return result
        }
    }
    public static func _ImageBitmap_construct1(src: KStringPtr, unit: KInt): UInt64 {
        unsafe {
            let src = LibC.mallocCString(src)
            let result = ImageBitmap_construct1(src, unit)
            LibC.free(src)
            return result
        }
    }
    public static func _ImageBitmap_construct2(data: KPointer): UInt64 {
        unsafe {
            let result = ImageBitmap_construct2(data)
            return result
        }
    }
    public static func _ImageBitmap_construct3(data: KPointer, unit: KInt): UInt64 {
        unsafe {
            let result = ImageBitmap_construct3(data, unit)
            return result
        }
    }
    public static func _ImageBitmap_getFinalizer(): UInt64 {
        unsafe {
            let result = ImageBitmap_getFinalizer()
            return result
        }
    }
    public static func _ImageBitmap_close(ptr: UInt64): Unit {
        unsafe {
            ImageBitmap_close(ptr)
        }
    }
    public static func _ImageData_construct0(width: Float64, height: Float64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = ImageData_construct0(width, height, thisArray, thisLength)
            return result
        }
    }
    public static func _ImageData_construct1(width: Float64, height: Float64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = ImageData_construct1(width, height, thisArray, thisLength)
            return result
        }
    }
    public static func _ImageData_getFinalizer(): UInt64 {
        unsafe {
            let result = ImageData_getFinalizer()
            return result
        }
    }
    public static func _ImageData_getData(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = ImageData_getData(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _ImageData_getHeight(ptr: UInt64): Float64 {
        unsafe {
            let result = ImageData_getHeight(ptr)
            return result
        }
    }
    public static func _ImageData_getWidth(ptr: UInt64): Float64 {
        unsafe {
            let result = ImageData_getWidth(ptr)
            return result
        }
    }
    public static func _Layoutable_construct(): UInt64 {
        unsafe {
            let result = Layoutable_construct()
            return result
        }
    }
    public static func _Layoutable_getFinalizer(): UInt64 {
        unsafe {
            let result = Layoutable_getFinalizer()
            return result
        }
    }
    public static func _Layoutable_layout(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            Layoutable_layout(ptr, thisArray, thisLength)
        }
    }
    public static func _Layoutable_getMargin(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = Layoutable_getMargin(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _Layoutable_getPadding(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = Layoutable_getPadding(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _Layoutable_getBorderWidth(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = Layoutable_getBorderWidth(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _Layoutable_getMeasureResult(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = Layoutable_getMeasureResult(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _Layoutable_setMeasureResult(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            Layoutable_setMeasureResult(ptr, thisArray, thisLength)
        }
    }
    public static func _LinearGradient_construct(thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = LinearGradient_construct(thisArray, thisLength)
            return result
        }
    }
    public static func _LinearGradient_getFinalizer(): UInt64 {
        unsafe {
            let result = LinearGradient_getFinalizer()
            return result
        }
    }
    public static func _Matrix2D_construct0(): UInt64 {
        unsafe {
            let result = Matrix2D_construct0()
            return result
        }
    }
    public static func _Matrix2D_construct1(unit: KInt): UInt64 {
        unsafe {
            let result = Matrix2D_construct1(unit)
            return result
        }
    }
    public static func _Matrix2D_getFinalizer(): UInt64 {
        unsafe {
            let result = Matrix2D_getFinalizer()
            return result
        }
    }
    public static func _Matrix2D_identity(ptr: UInt64): UInt64 {
        unsafe {
            let result = Matrix2D_identity(ptr)
            return result
        }
    }
    public static func _Matrix2D_invert(ptr: UInt64): UInt64 {
        unsafe {
            let result = Matrix2D_invert(ptr)
            return result
        }
    }
    public static func _Matrix2D_multiply(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = Matrix2D_multiply(ptr, thisArray, thisLength)
            return result
        }
    }
    public static func _Matrix2D_rotate0(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = Matrix2D_rotate0(ptr, thisArray, thisLength)
            return result
        }
    }
    public static func _Matrix2D_rotate1(ptr: UInt64, degree: Float64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = Matrix2D_rotate1(ptr, degree, thisArray, thisLength)
            return result
        }
    }
    public static func _Matrix2D_translate(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = Matrix2D_translate(ptr, thisArray, thisLength)
            return result
        }
    }
    public static func _Matrix2D_scale(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = Matrix2D_scale(ptr, thisArray, thisLength)
            return result
        }
    }
    public static func _Matrix2D_getScaleX(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = Matrix2D_getScaleX(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _Matrix2D_setScaleX(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            Matrix2D_setScaleX(ptr, thisArray, thisLength)
        }
    }
    public static func _Matrix2D_getRotateY(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = Matrix2D_getRotateY(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _Matrix2D_setRotateY(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            Matrix2D_setRotateY(ptr, thisArray, thisLength)
        }
    }
    public static func _Matrix2D_getRotateX(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = Matrix2D_getRotateX(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _Matrix2D_setRotateX(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            Matrix2D_setRotateX(ptr, thisArray, thisLength)
        }
    }
    public static func _Matrix2D_getScaleY(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = Matrix2D_getScaleY(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _Matrix2D_setScaleY(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            Matrix2D_setScaleY(ptr, thisArray, thisLength)
        }
    }
    public static func _Matrix2D_getTranslateX(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = Matrix2D_getTranslateX(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _Matrix2D_setTranslateX(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            Matrix2D_setTranslateX(ptr, thisArray, thisLength)
        }
    }
    public static func _Matrix2D_getTranslateY(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = Matrix2D_getTranslateY(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _Matrix2D_setTranslateY(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            Matrix2D_setTranslateY(ptr, thisArray, thisLength)
        }
    }
    public static func _Measurable_construct(): UInt64 {
        unsafe {
            let result = Measurable_construct()
            return result
        }
    }
    public static func _Measurable_getFinalizer(): UInt64 {
        unsafe {
            let result = Measurable_getFinalizer()
            return result
        }
    }
    public static func _Measurable_measure(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Array<UInt8> {
        unsafe {
            let result = Measurable_measure(ptr, thisArray, thisLength)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _Measurable_getMargin(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = Measurable_getMargin(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _Measurable_getPadding(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = Measurable_getPadding(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _Measurable_getBorderWidth(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = Measurable_getBorderWidth(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _MediaQuery_construct(): UInt64 {
        unsafe {
            let result = MediaQuery_construct()
            return result
        }
    }
    public static func _MediaQuery_getFinalizer(): UInt64 {
        unsafe {
            let result = MediaQuery_getFinalizer()
            return result
        }
    }
    public static func _MediaQuery_stub(ptr: UInt64): Unit {
        unsafe {
            MediaQuery_stub(ptr)
        }
    }
    public static func _NavDestinationContext_construct(): UInt64 {
        unsafe {
            let result = NavDestinationContext_construct()
            return result
        }
    }
    public static func _NavDestinationContext_getFinalizer(): UInt64 {
        unsafe {
            let result = NavDestinationContext_getFinalizer()
            return result
        }
    }
    public static func _NavDestinationContext_getConfigInRouteMap(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = NavDestinationContext_getConfigInRouteMap(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _NavDestinationContext_getPathInfo(ptr: UInt64): UInt64 {
        unsafe {
            let result = NavDestinationContext_getPathInfo(ptr)
            return result
        }
    }
    public static func _NavDestinationContext_setPathInfo(ptr: UInt64, pathInfo: KPointer): Unit {
        unsafe {
            NavDestinationContext_setPathInfo(ptr, pathInfo)
        }
    }
    public static func _NavDestinationContext_getPathStack(ptr: UInt64): UInt64 {
        unsafe {
            let result = NavDestinationContext_getPathStack(ptr)
            return result
        }
    }
    public static func _NavDestinationContext_setPathStack(ptr: UInt64, pathStack: KPointer): Unit {
        unsafe {
            NavDestinationContext_setPathStack(ptr, pathStack)
        }
    }
    public static func _NavDestinationContext_getNavDestinationId(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = NavDestinationContext_getNavDestinationId(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _NavDestinationContext_setNavDestinationId(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavDestinationContext_setNavDestinationId(ptr, thisArray, thisLength)
        }
    }
    public static func _NavDestinationInfo_construct(): UInt64 {
        unsafe {
            let result = NavDestinationInfo_construct()
            return result
        }
    }
    public static func _NavDestinationInfo_getFinalizer(): UInt64 {
        unsafe {
            let result = NavDestinationInfo_getFinalizer()
            return result
        }
    }
    public static func _NavDestinationInfo_stub(ptr: UInt64): Unit {
        unsafe {
            NavDestinationInfo_stub(ptr)
        }
    }
    public static func _NavigationInfo_construct(): UInt64 {
        unsafe {
            let result = NavigationInfo_construct()
            return result
        }
    }
    public static func _NavigationInfo_getFinalizer(): UInt64 {
        unsafe {
            let result = NavigationInfo_getFinalizer()
            return result
        }
    }
    public static func _NavigationInfo_stub(ptr: UInt64): Unit {
        unsafe {
            NavigationInfo_stub(ptr)
        }
    }
    public static func _NavigationTransitionProxy_construct(): UInt64 {
        unsafe {
            let result = NavigationTransitionProxy_construct()
            return result
        }
    }
    public static func _NavigationTransitionProxy_getFinalizer(): UInt64 {
        unsafe {
            let result = NavigationTransitionProxy_getFinalizer()
            return result
        }
    }
    public static func _NavigationTransitionProxy_finishTransition(ptr: UInt64): Unit {
        unsafe {
            NavigationTransitionProxy_finishTransition(ptr)
        }
    }
    public static func _NavigationTransitionProxy_cancelTransition(ptr: UInt64): Unit {
        unsafe {
            NavigationTransitionProxy_cancelTransition(ptr)
        }
    }
    public static func _NavigationTransitionProxy_updateTransition(ptr: UInt64, progress: Float64): Unit {
        unsafe {
            NavigationTransitionProxy_updateTransition(ptr, progress)
        }
    }
    public static func _NavigationTransitionProxy_getFrom(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = NavigationTransitionProxy_getFrom(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _NavigationTransitionProxy_setFrom(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavigationTransitionProxy_setFrom(ptr, thisArray, thisLength)
        }
    }
    public static func _NavigationTransitionProxy_getTo(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = NavigationTransitionProxy_getTo(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _NavigationTransitionProxy_setTo(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavigationTransitionProxy_setTo(ptr, thisArray, thisLength)
        }
    }
    public static func _NavigationTransitionProxy_getIsInteractive(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = NavigationTransitionProxy_getIsInteractive(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _NavigationTransitionProxy_setIsInteractive(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavigationTransitionProxy_setIsInteractive(ptr, thisArray, thisLength)
        }
    }
    public static func _NavPathInfo_construct(name: KStringPtr, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let name = LibC.mallocCString(name)
            let result = NavPathInfo_construct(name, thisArray, thisLength)
            LibC.free(name)
            return result
        }
    }
    public static func _NavPathInfo_getFinalizer(): UInt64 {
        unsafe {
            let result = NavPathInfo_getFinalizer()
            return result
        }
    }
    public static func _NavPathInfo_getName(ptr: UInt64): String {
        unsafe {
            let result = NavPathInfo_getName(ptr)
            return result.toString()
        }
    }
    public static func _NavPathInfo_setName(ptr: UInt64, name: KStringPtr): Unit {
        unsafe {
            let name = LibC.mallocCString(name)
            NavPathInfo_setName(ptr, name)
            LibC.free(name)
        }
    }
    public static func _NavPathInfo_getParam(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = NavPathInfo_getParam(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _NavPathInfo_setParam(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavPathInfo_setParam(ptr, thisArray, thisLength)
        }
    }
    public static func _NavPathInfo_getOnPop(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = NavPathInfo_getOnPop(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _NavPathInfo_setOnPop(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavPathInfo_setOnPop(ptr, thisArray, thisLength)
        }
    }
    public static func _NavPathStack_construct(): UInt64 {
        unsafe {
            let result = NavPathStack_construct()
            return result
        }
    }
    public static func _NavPathStack_getFinalizer(): UInt64 {
        unsafe {
            let result = NavPathStack_getFinalizer()
            return result
        }
    }
    public static func _NavPathStack_pushPath0(ptr: UInt64, info: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavPathStack_pushPath0(ptr, info, thisArray, thisLength)
        }
    }
    public static func _NavPathStack_pushPath1(ptr: UInt64, info: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavPathStack_pushPath1(ptr, info, thisArray, thisLength)
        }
    }
    public static func _NavPathStack_pushDestination0(ptr: UInt64, info: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavPathStack_pushDestination0(ptr, info, thisArray, thisLength)
        }
    }
    public static func _NavPathStack_pushDestination1(ptr: UInt64, info: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavPathStack_pushDestination1(ptr, info, thisArray, thisLength)
        }
    }
    public static func _NavPathStack_pushPathByName0(ptr: UInt64, name: KStringPtr, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            let name = LibC.mallocCString(name)
            NavPathStack_pushPathByName0(ptr, name, thisArray, thisLength)
            LibC.free(name)
        }
    }
    public static func _NavPathStack_pushPathByName1(ptr: UInt64, name: KStringPtr, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            let name = LibC.mallocCString(name)
            NavPathStack_pushPathByName1(ptr, name, thisArray, thisLength)
            LibC.free(name)
        }
    }
    public static func _NavPathStack_pushDestinationByName0(ptr: UInt64, name: KStringPtr, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            let name = LibC.mallocCString(name)
            NavPathStack_pushDestinationByName0(ptr, name, thisArray, thisLength)
            LibC.free(name)
        }
    }
    public static func _NavPathStack_pushDestinationByName1(ptr: UInt64, name: KStringPtr, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            let name = LibC.mallocCString(name)
            NavPathStack_pushDestinationByName1(ptr, name, thisArray, thisLength)
            LibC.free(name)
        }
    }
    public static func _NavPathStack_replacePath0(ptr: UInt64, info: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavPathStack_replacePath0(ptr, info, thisArray, thisLength)
        }
    }
    public static func _NavPathStack_replacePath1(ptr: UInt64, info: KPointer, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavPathStack_replacePath1(ptr, info, thisArray, thisLength)
        }
    }
    public static func _NavPathStack_replacePathByName(ptr: UInt64, name: KStringPtr, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            let name = LibC.mallocCString(name)
            NavPathStack_replacePathByName(ptr, name, thisArray, thisLength)
            LibC.free(name)
        }
    }
    public static func _NavPathStack_removeByIndexes(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Float64 {
        unsafe {
            let result = NavPathStack_removeByIndexes(ptr, thisArray, thisLength)
            return result
        }
    }
    public static func _NavPathStack_removeByName(ptr: UInt64, name: KStringPtr): Float64 {
        unsafe {
            let name = LibC.mallocCString(name)
            let result = NavPathStack_removeByName(ptr, name)
            LibC.free(name)
            return result
        }
    }
    public static func _NavPathStack_removeByNavDestinationId(ptr: UInt64, navDestinationId: KStringPtr): Bool {
        unsafe {
            let navDestinationId = LibC.mallocCString(navDestinationId)
            let result = NavPathStack_removeByNavDestinationId(ptr, navDestinationId)
            LibC.free(navDestinationId)
            return result
        }
    }
    public static func _NavPathStack_pop0(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Array<UInt8> {
        unsafe {
            let result = NavPathStack_pop0(ptr, thisArray, thisLength)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _NavPathStack_pop1(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Array<UInt8> {
        unsafe {
            let result = NavPathStack_pop1(ptr, thisArray, thisLength)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _NavPathStack_popToName0(ptr: UInt64, name: KStringPtr, thisArray: KSerializerBuffer, thisLength: Int32): Float64 {
        unsafe {
            let name = LibC.mallocCString(name)
            let result = NavPathStack_popToName0(ptr, name, thisArray, thisLength)
            LibC.free(name)
            return result
        }
    }
    public static func _NavPathStack_popToName1(ptr: UInt64, name: KStringPtr, thisArray: KSerializerBuffer, thisLength: Int32): Float64 {
        unsafe {
            let name = LibC.mallocCString(name)
            let result = NavPathStack_popToName1(ptr, name, thisArray, thisLength)
            LibC.free(name)
            return result
        }
    }
    public static func _NavPathStack_popToIndex0(ptr: UInt64, index: Float64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavPathStack_popToIndex0(ptr, index, thisArray, thisLength)
        }
    }
    public static func _NavPathStack_popToIndex1(ptr: UInt64, index: Float64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavPathStack_popToIndex1(ptr, index, thisArray, thisLength)
        }
    }
    public static func _NavPathStack_moveToTop(ptr: UInt64, name: KStringPtr, thisArray: KSerializerBuffer, thisLength: Int32): Float64 {
        unsafe {
            let name = LibC.mallocCString(name)
            let result = NavPathStack_moveToTop(ptr, name, thisArray, thisLength)
            LibC.free(name)
            return result
        }
    }
    public static func _NavPathStack_moveIndexToTop(ptr: UInt64, index: Float64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavPathStack_moveIndexToTop(ptr, index, thisArray, thisLength)
        }
    }
    public static func _NavPathStack_clear(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavPathStack_clear(ptr, thisArray, thisLength)
        }
    }
    public static func _NavPathStack_getAllPathName(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = NavPathStack_getAllPathName(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _NavPathStack_getParamByIndex(ptr: UInt64, index: Float64): Array<UInt8> {
        unsafe {
            let result = NavPathStack_getParamByIndex(ptr, index)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _NavPathStack_getParamByName(ptr: UInt64, name: KStringPtr): Array<UInt8> {
        unsafe {
            let name = LibC.mallocCString(name)
            let result = NavPathStack_getParamByName(ptr, name)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            LibC.free(name)
            return array
        }
    }
    public static func _NavPathStack_getIndexByName(ptr: UInt64, name: KStringPtr): Array<UInt8> {
        unsafe {
            let name = LibC.mallocCString(name)
            let result = NavPathStack_getIndexByName(ptr, name)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            LibC.free(name)
            return array
        }
    }
    public static func _NavPathStack_getParent(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = NavPathStack_getParent(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _NavPathStack_size(ptr: UInt64): Float64 {
        unsafe {
            let result = NavPathStack_size(ptr)
            return result
        }
    }
    public static func _NavPathStack_disableAnimation(ptr: UInt64, value: KInt): Unit {
        unsafe {
            NavPathStack_disableAnimation(ptr, value)
        }
    }
    public static func _NavPathStack_setInterception(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            NavPathStack_setInterception(ptr, thisArray, thisLength)
        }
    }
    public static func _OverlayManager_construct(): UInt64 {
        unsafe {
            let result = OverlayManager_construct()
            return result
        }
    }
    public static func _OverlayManager_getFinalizer(): UInt64 {
        unsafe {
            let result = OverlayManager_getFinalizer()
            return result
        }
    }
    public static func _OverlayManager_stub(ptr: UInt64): Unit {
        unsafe {
            OverlayManager_stub(ptr)
        }
    }
    public static func _OverlayManagerOptions_construct(): UInt64 {
        unsafe {
            let result = OverlayManagerOptions_construct()
            return result
        }
    }
    public static func _OverlayManagerOptions_getFinalizer(): UInt64 {
        unsafe {
            let result = OverlayManagerOptions_getFinalizer()
            return result
        }
    }
    public static func _OverlayManagerOptions_stub(ptr: UInt64): Unit {
        unsafe {
            OverlayManagerOptions_stub(ptr)
        }
    }
    public static func _PageInfo_construct(): UInt64 {
        unsafe {
            let result = PageInfo_construct()
            return result
        }
    }
    public static func _PageInfo_getFinalizer(): UInt64 {
        unsafe {
            let result = PageInfo_getFinalizer()
            return result
        }
    }
    public static func _PageInfo_stub(ptr: UInt64): Unit {
        unsafe {
            PageInfo_stub(ptr)
        }
    }
    public static func _PromptAction_construct(): UInt64 {
        unsafe {
            let result = PromptAction_construct()
            return result
        }
    }
    public static func _PromptAction_getFinalizer(): UInt64 {
        unsafe {
            let result = PromptAction_getFinalizer()
            return result
        }
    }
    public static func _PromptAction_stub(ptr: UInt64): Unit {
        unsafe {
            PromptAction_stub(ptr)
        }
    }
    public static func _PromptActionCommonController_construct(): UInt64 {
        unsafe {
            let result = PromptActionCommonController_construct()
            return result
        }
    }
    public static func _PromptActionCommonController_getFinalizer(): UInt64 {
        unsafe {
            let result = PromptActionCommonController_getFinalizer()
            return result
        }
    }
    public static func _PromptActionCommonController_stub(ptr: UInt64): Unit {
        unsafe {
            PromptActionCommonController_stub(ptr)
        }
    }
    public static func _PromptActionDialogController_construct(): UInt64 {
        unsafe {
            let result = PromptActionDialogController_construct()
            return result
        }
    }
    public static func _PromptActionDialogController_getFinalizer(): UInt64 {
        unsafe {
            let result = PromptActionDialogController_getFinalizer()
            return result
        }
    }
    public static func _PromptActionDialogController_stub(ptr: UInt64): Unit {
        unsafe {
            PromptActionDialogController_stub(ptr)
        }
    }
    public static func _RenderingContextSettings_construct(thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = RenderingContextSettings_construct(thisArray, thisLength)
            return result
        }
    }
    public static func _RenderingContextSettings_getFinalizer(): UInt64 {
        unsafe {
            let result = RenderingContextSettings_getFinalizer()
            return result
        }
    }
    public static func _RenderingContextSettings_getAntialias(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = RenderingContextSettings_getAntialias(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _RenderingContextSettings_setAntialias(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            RenderingContextSettings_setAntialias(ptr, thisArray, thisLength)
        }
    }
    public static func _RenderServiceNode_getNodeId(nodeId: KStringPtr): Int32 {
        unsafe {
            let nodeId = LibC.mallocCString(nodeId)
            let result = RenderServiceNode_getNodeId(nodeId)
            LibC.free(nodeId)
            return result
        }
    }
    public static func _Router_construct(): UInt64 {
        unsafe {
            let result = Router_construct()
            return result
        }
    }
    public static func _Router_getFinalizer(): UInt64 {
        unsafe {
            let result = Router_getFinalizer()
            return result
        }
    }
    public static func _Router_stub(ptr: UInt64): Unit {
        unsafe {
            Router_stub(ptr)
        }
    }
    public static func _RouterPageInfo_construct(): UInt64 {
        unsafe {
            let result = RouterPageInfo_construct()
            return result
        }
    }
    public static func _RouterPageInfo_getFinalizer(): UInt64 {
        unsafe {
            let result = RouterPageInfo_getFinalizer()
            return result
        }
    }
    public static func _RouterPageInfo_stub(ptr: UInt64): Unit {
        unsafe {
            RouterPageInfo_stub(ptr)
        }
    }
    public static func _ScreenshotService_requestScreenshot(target: KStringPtr, name: KStringPtr): Bool {
        unsafe {
            let target = LibC.mallocCString(target)
            let name = LibC.mallocCString(name)
            let result = ScreenshotService_requestScreenshot(target, name)
            LibC.free(target)
            LibC.free(name)
            return result
        }
    }
    public static func _Scroller_construct(): UInt64 {
        unsafe {
            let result = Scroller_construct()
            return result
        }
    }
    public static func _Scroller_getFinalizer(): UInt64 {
        unsafe {
            let result = Scroller_getFinalizer()
            return result
        }
    }
    public static func _Scroller_scrollTo(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            Scroller_scrollTo(ptr, thisArray, thisLength)
        }
    }
    public static func _Scroller_scrollPage0(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            Scroller_scrollPage0(ptr, thisArray, thisLength)
        }
    }
    public static func _Scroller_scrollPage1(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            Scroller_scrollPage1(ptr, thisArray, thisLength)
        }
    }
    public static func _StyledString_construct(): UInt64 {
        unsafe {
            let result = StyledString_construct()
            return result
        }
    }
    public static func _StyledString_getFinalizer(): UInt64 {
        unsafe {
            let result = StyledString_getFinalizer()
            return result
        }
    }
    public static func _StyledString_getString(ptr: UInt64): String {
        unsafe {
            let result = StyledString_getString(ptr)
            return result.toString()
        }
    }
    public static func _StyledString_equals(ptr: UInt64, other: KPointer): Bool {
        unsafe {
            let result = StyledString_equals(ptr, other)
            return result
        }
    }
    public static func _StyledString_subStyledString(ptr: UInt64, start: Float64, thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = StyledString_subStyledString(ptr, start, thisArray, thisLength)
            return result
        }
    }
    public static func _StyledString_marshalling(styledString: KPointer): Array<UInt8> {
        unsafe {
            let result = StyledString_marshalling(styledString)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _StyledString_getLength(ptr: UInt64): Float64 {
        unsafe {
            let result = StyledString_getLength(ptr)
            return result
        }
    }
    public static func _SwiperController_construct(): UInt64 {
        unsafe {
            let result = SwiperController_construct()
            return result
        }
    }
    public static func _SwiperController_getFinalizer(): UInt64 {
        unsafe {
            let result = SwiperController_getFinalizer()
            return result
        }
    }
    public static func _SwiperController_showNext(ptr: UInt64): Unit {
        unsafe {
            SwiperController_showNext(ptr)
        }
    }
    public static func _SwiperController_showPrevious(ptr: UInt64): Unit {
        unsafe {
            SwiperController_showPrevious(ptr)
        }
    }
    public static func _SwiperController_changeIndex(ptr: UInt64, index: Float64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            SwiperController_changeIndex(ptr, index, thisArray, thisLength)
        }
    }
    public static func _SwiperController_finishAnimation(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            SwiperController_finishAnimation(ptr, thisArray, thisLength)
        }
    }
    public static func _SymbolGlyphModifier_construct(thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = SymbolGlyphModifier_construct(thisArray, thisLength)
            return result
        }
    }
    public static func _SymbolGlyphModifier_getFinalizer(): UInt64 {
        unsafe {
            let result = SymbolGlyphModifier_getFinalizer()
            return result
        }
    }
    public static func _TargetInfo_construct(): UInt64 {
        unsafe {
            let result = TargetInfo_construct()
            return result
        }
    }
    public static func _TargetInfo_getFinalizer(): UInt64 {
        unsafe {
            let result = TargetInfo_getFinalizer()
            return result
        }
    }
    public static func _TargetInfo_stub(ptr: UInt64): Unit {
        unsafe {
            TargetInfo_stub(ptr)
        }
    }
    public static func _TextController_construct(): UInt64 {
        unsafe {
            let result = TextController_construct()
            return result
        }
    }
    public static func _TextController_getFinalizer(): UInt64 {
        unsafe {
            let result = TextController_getFinalizer()
            return result
        }
    }
    public static func _TextController_closeSelectionMenu(ptr: UInt64): Unit {
        unsafe {
            TextController_closeSelectionMenu(ptr)
        }
    }
    public static func _TextController_setStyledString(ptr: UInt64, value: KPointer): Unit {
        unsafe {
            TextController_setStyledString(ptr, value)
        }
    }
    public static func _TextPickerDialog_show(thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            let result = TextPickerDialog_show(thisArray, thisLength)
            return result
        }
    }
    public static func _TextStyle_styled_string_construct(thisArray: KSerializerBuffer, thisLength: Int32): UInt64 {
        unsafe {
            let result = TextStyle_styled_string_construct(thisArray, thisLength)
            return result
        }
    }
    public static func _TextStyle_styled_string_getFinalizer(): UInt64 {
        unsafe {
            let result = TextStyle_styled_string_getFinalizer()
            return result
        }
    }
    public static func _TextStyle_styled_string_getFontColor(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = TextStyle_styled_string_getFontColor(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _TextStyle_styled_string_getFontFamily(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = TextStyle_styled_string_getFontFamily(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _TextStyle_styled_string_getFontSize(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = TextStyle_styled_string_getFontSize(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _TextStyle_styled_string_getFontWeight(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = TextStyle_styled_string_getFontWeight(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _TextStyle_styled_string_getFontStyle(ptr: UInt64): Array<UInt8> {
        unsafe {
            let result = TextStyle_styled_string_getFontStyle(ptr)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _Theme_construct(): UInt64 {
        unsafe {
            let result = Theme_construct()
            return result
        }
    }
    public static func _Theme_getFinalizer(): UInt64 {
        unsafe {
            let result = Theme_getFinalizer()
            return result
        }
    }
    public static func _UICommonEvent_construct(): UInt64 {
        unsafe {
            let result = UICommonEvent_construct()
            return result
        }
    }
    public static func _UICommonEvent_getFinalizer(): UInt64 {
        unsafe {
            let result = UICommonEvent_getFinalizer()
            return result
        }
    }
    public static func _UICommonEvent_setOnClick(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            UICommonEvent_setOnClick(ptr, thisArray, thisLength)
        }
    }
    public static func _UIContext_construct(): UInt64 {
        unsafe {
            let result = UIContext_construct()
            return result
        }
    }
    public static func _UIContext_getFinalizer(): UInt64 {
        unsafe {
            let result = UIContext_getFinalizer()
            return result
        }
    }
    public static func _UIContext_stub(ptr: UInt64): Unit {
        unsafe {
            UIContext_stub(ptr)
        }
    }
    public static func _UIExtensionProxy_construct(): UInt64 {
        unsafe {
            let result = UIExtensionProxy_construct()
            return result
        }
    }
    public static func _UIExtensionProxy_getFinalizer(): UInt64 {
        unsafe {
            let result = UIExtensionProxy_getFinalizer()
            return result
        }
    }
    public static func _UIExtensionProxy_send(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            UIExtensionProxy_send(ptr, thisArray, thisLength)
        }
    }
    public static func _UIExtensionProxy_sendSync(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Array<UInt8> {
        unsafe {
            let result = UIExtensionProxy_sendSync(ptr, thisArray, thisLength)
            let array = Array<UInt8>(Int64(result.length), repeat: 0)
            for (i in 0..array.size) { unsafe { array[i] = result.data.read() } }
            return array
        }
    }
    public static func _UIExtensionProxy_onAsyncReceiverRegister(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            UIExtensionProxy_onAsyncReceiverRegister(ptr, thisArray, thisLength)
        }
    }
    public static func _UIExtensionProxy_onSyncReceiverRegister(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            UIExtensionProxy_onSyncReceiverRegister(ptr, thisArray, thisLength)
        }
    }
    public static func _UIExtensionProxy_offAsyncReceiverRegister(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            UIExtensionProxy_offAsyncReceiverRegister(ptr, thisArray, thisLength)
        }
    }
    public static func _UIExtensionProxy_offSyncReceiverRegister(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            UIExtensionProxy_offSyncReceiverRegister(ptr, thisArray, thisLength)
        }
    }
    public static func _UIInspector_construct(): UInt64 {
        unsafe {
            let result = UIInspector_construct()
            return result
        }
    }
    public static func _UIInspector_getFinalizer(): UInt64 {
        unsafe {
            let result = UIInspector_getFinalizer()
            return result
        }
    }
    public static func _UIInspector_stub(ptr: UInt64): Unit {
        unsafe {
            UIInspector_stub(ptr)
        }
    }
    public static func _UIObserver_construct(): UInt64 {
        unsafe {
            let result = UIObserver_construct()
            return result
        }
    }
    public static func _UIObserver_getFinalizer(): UInt64 {
        unsafe {
            let result = UIObserver_getFinalizer()
            return result
        }
    }
    public static func _UIObserver_stub(ptr: UInt64): Unit {
        unsafe {
            UIObserver_stub(ptr)
        }
    }
    public static func _UrlStyle_construct(url: KStringPtr): UInt64 {
        unsafe {
            let url = LibC.mallocCString(url)
            let result = UrlStyle_construct(url)
            LibC.free(url)
            return result
        }
    }
    public static func _UrlStyle_getFinalizer(): UInt64 {
        unsafe {
            let result = UrlStyle_getFinalizer()
            return result
        }
    }
    public static func _UrlStyle_getUrl(ptr: UInt64): String {
        unsafe {
            let result = UrlStyle_getUrl(ptr)
            return result.toString()
        }
    }
    public static func _Want_construct(): UInt64 {
        unsafe {
            let result = Want_construct()
            return result
        }
    }
    public static func _Want_getFinalizer(): UInt64 {
        unsafe {
            let result = Want_getFinalizer()
            return result
        }
    }
    public static func _Want_stub(ptr: UInt64): Unit {
        unsafe {
            Want_stub(ptr)
        }
    }
    public static func _WebResourceResponse_construct(): UInt64 {
        unsafe {
            let result = WebResourceResponse_construct()
            return result
        }
    }
    public static func _WebResourceResponse_getFinalizer(): UInt64 {
        unsafe {
            let result = WebResourceResponse_getFinalizer()
            return result
        }
    }
    public static func _WebResourceResponse_setResponseData(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            WebResourceResponse_setResponseData(ptr, thisArray, thisLength)
        }
    }
    public static func _window_SystemBarStyle_construct(): UInt64 {
        unsafe {
            let result = window_SystemBarStyle_construct()
            return result
        }
    }
    public static func _window_SystemBarStyle_getFinalizer(): UInt64 {
        unsafe {
            let result = window_SystemBarStyle_getFinalizer()
            return result
        }
    }
    public static func _XComponentController_construct(): UInt64 {
        unsafe {
            let result = XComponentController_construct()
            return result
        }
    }
    public static func _XComponentController_getFinalizer(): UInt64 {
        unsafe {
            let result = XComponentController_getFinalizer()
            return result
        }
    }
    public static func _XComponentController_getXComponentContext(ptr: UInt64): Any {
        unsafe {
            let result = XComponentController_getXComponentContext(ptr)
            return result
        }
    }
    public static func _XComponentController_setXComponentSurfaceSize(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            XComponentController_setXComponentSurfaceSize(ptr, thisArray, thisLength)
        }
    }
    public static func _XComponentController_stopImageAnalyzer(ptr: UInt64): Unit {
        unsafe {
            XComponentController_stopImageAnalyzer(ptr)
        }
    }
    public static func _XComponentController_getOnSurfaceCreated(ptr: UInt64): UInt64 {
        unsafe {
            let result = XComponentController_getOnSurfaceCreated(ptr)
            return result
        }
    }
    public static func _XComponentController_setOnSurfaceCreated(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            XComponentController_setOnSurfaceCreated(ptr, thisArray, thisLength)
        }
    }
    public static func _XComponentController_getOnSurfaceDestroyed(ptr: UInt64): UInt64 {
        unsafe {
            let result = XComponentController_getOnSurfaceDestroyed(ptr)
            return result
        }
    }
    public static func _XComponentController_setOnSurfaceDestroyed(ptr: UInt64, thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            XComponentController_setOnSurfaceDestroyed(ptr, thisArray, thisLength)
        }
    }
    public static func _GlobalScope_toIncludeDouble(thisArray: KSerializerBuffer, thisLength: Int32): Unit {
        unsafe {
            GlobalScope_toIncludeDouble(thisArray, thisLength)
        }
    }
}
