.class public final enum Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;

.field public static final enum kKeyboardBlocksFacebookFeedDialog:Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;

    const-string/jumbo v1, "kKeyboardBlocksFacebookFeedDialog"

    invoke-direct {v0, v1, v2}, Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;->kKeyboardBlocksFacebookFeedDialog:Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;

    .line 9
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;

    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;->kKeyboardBlocksFacebookFeedDialog:Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;

    aput-object v1, v0, v2

    sput-object v0, Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;->a:[Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;

    return-object v0
.end method

.method public static values()[Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;->a:[Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;

    invoke-virtual {v0}, [Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pixelberrystudios/darthkitty/DKDeviceConfig$DeviceProps;

    return-object v0
.end method
