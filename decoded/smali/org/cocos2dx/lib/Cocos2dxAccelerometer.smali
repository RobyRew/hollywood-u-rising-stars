.class public Lorg/cocos2dx/lib/Cocos2dxAccelerometer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/hardware/SensorManager;

.field private c:Landroid/hardware/Sensor;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->a:Landroid/content/Context;

    .line 53
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->a:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->b:Landroid/hardware/SensorManager;

    .line 54
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->b:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->c:Landroid/hardware/Sensor;

    .line 56
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->a:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->d:I

    .line 58
    return-void
.end method

.method private static native onSensorChanged(FFFJ)V
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 66
    return-void
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->c:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 62
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 71
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 100
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 76
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    .line 77
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    .line 85
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 86
    if-ne v3, v4, :cond_1

    iget v4, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->d:I

    if-eqz v4, :cond_1

    .line 88
    neg-float v1, v1

    .line 98
    :goto_1
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v1, v0, v2, v4, v5}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->onSensorChanged(FFFJ)V

    goto :goto_0

    .line 91
    :cond_1
    if-ne v3, v5, :cond_2

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->d:I

    if-eqz v3, :cond_2

    .line 95
    neg-float v0, v0

    goto :goto_1

    :cond_2
    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_1
.end method
