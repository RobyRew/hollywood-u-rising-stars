.class public Lcom/pixelberrystudios/hwuandroid/HWUNativeActivity;
.super Lcom/pixelberrystudios/hssandroid/PBNativeActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onResume()V
    .locals 2

    .prologue
    .line 21
    invoke-super {p0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->onResume()V

    .line 23
    const-string/jumbo v0, "kkmskAMp8aVQYIw"

    const-string/jumbo v1, "dRijVxkng1KzUBY"

    invoke-static {p0, v0, v1}, Lcom/growmobile/GrowMobileSDK;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method protected u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "148708089097-golm1ffgj6vte9golu1n392pgmr77pkq.apps.googleusercontent.com"

    return-object v0
.end method
