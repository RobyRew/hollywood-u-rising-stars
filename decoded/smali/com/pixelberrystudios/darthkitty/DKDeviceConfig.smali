.class public Lcom/pixelberrystudios/darthkitty/DKDeviceConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected static final b:[Ljava/lang/String;

.field protected static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKDeviceConfig;->a:Ljava/util/Map;

    .line 14
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "GT-P3100"

    aput-object v1, v0, v2

    const-string/jumbo v1, "GT-P3110"

    aput-object v1, v0, v3

    const-string/jumbo v1, "GT-P5110"

    aput-object v1, v0, v4

    const-string/jumbo v1, "GT-P5113"

    aput-object v1, v0, v5

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKDeviceConfig;->b:[Ljava/lang/String;

    .line 15
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "SM-N900"

    aput-object v1, v0, v2

    const-string/jumbo v1, "SM-N9000Q"

    aput-object v1, v0, v3

    const-string/jumbo v1, "SAMSUNG-SM-N900A"

    aput-object v1, v0, v4

    const-string/jumbo v1, "SCL22"

    aput-object v1, v0, v5

    const-string/jumbo v1, "SM-N9002"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string/jumbo v2, "SM-N9005"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "SM-N9006"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "SM-N9008"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "SM-N900K"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "SM-N900L"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "SM-N900P"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "SM-N900R4"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "SM-N900S"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "SM-N900T"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "SM-N900V"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "SM-N900W8"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKDeviceConfig;->c:[Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKDeviceConfig;->b:[Ljava/lang/String;

    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;->kKeyboardBlocksFacebookFeedDialog:Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;

    invoke-static {v0, v1, v3}, Lcom/pixelberrystudios/darthkitty/DKDeviceConfig;->setBoolProp([Ljava/lang/String;Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;Z)V

    .line 66
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKDeviceConfig;->c:[Ljava/lang/String;

    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;->kKeyboardBlocksFacebookFeedDialog:Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;

    invoke-static {v0, v1, v3}, Lcom/pixelberrystudios/darthkitty/DKDeviceConfig;->setBoolProp([Ljava/lang/String;Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;Z)V

    .line 67
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKDeviceConfig;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;->kKeyboardBlocksFacebookFeedDialog:Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pixelberrystudios/darthkitty/DKDeviceConfig;->addProp(Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;Ljava/lang/Object;)V

    .line 70
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addProp(Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKDeviceConfig;->a:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public static addProp(Ljava/lang/String;Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 19
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    :goto_0
    return-void

    .line 22
    :cond_0
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKDeviceConfig;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static addProp([Ljava/lang/String;Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 31
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p0, v0

    .line 32
    invoke-static {v2, p1, p2}, Lcom/pixelberrystudios/darthkitty/DKDeviceConfig;->addProp(Ljava/lang/String;Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;Ljava/lang/Object;)V

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public static checkBoolProp(Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    :try_start_0
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKDeviceConfig;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 39
    if-nez v0, :cond_0

    move v0, v1

    .line 51
    :goto_0
    return v0

    .line 43
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    :goto_1
    move v0, v1

    .line 51
    goto :goto_0

    .line 49
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static isKindleFire()Z
    .locals 2

    .prologue
    .line 60
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v1, "Amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "Kindle Fire"

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "KF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    .line 61
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setBoolProp([Ljava/lang/String;Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;Z)V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {p0, p1, v0}, Lcom/pixelberrystudios/darthkitty/DKDeviceConfig;->addProp([Ljava/lang/String;Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;Ljava/lang/Object;)V

    .line 56
    return-void
.end method
