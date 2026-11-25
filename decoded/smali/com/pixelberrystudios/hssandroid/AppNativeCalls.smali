.class public Lcom/pixelberrystudios/hssandroid/AppNativeCalls;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lorg/cocos2dx/lib/Cocos2dxRenderer;

.field private static b:Lcom/pixelberrystudios/hssandroid/PBNativeActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native AppNativeCallsContainsRequestId(Ljava/lang/String;)Z
.end method

.method protected static native AppNativeCallsCreatePayload(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected static native AppNativeCallsGetConsumableSkus()[Ljava/lang/String;
.end method

.method public static native AppNativeCallsGetLastPlayedGoogleLinkedAccount()Ljava/lang/String;
.end method

.method public static native AppNativeCallsHasGuestSavedGame()Z
.end method

.method public static native AppNativeCallsInsertRequestId(Ljava/lang/String;)V
.end method

.method protected static native AppNativeCallsNotifyBoughtInventoryLoaded(Lcom/pixelberrystudios/iab/Inventory;)V
.end method

.method protected static native AppNativeCallsNotifyDeepLink(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method protected static native AppNativeCallsNotifyLowMemory()V
.end method

.method protected static native AppNativeCallsNotifyPurchaseCompleted(Lcom/pixelberrystudios/iab/Purchase;ZLjava/lang/String;)V
.end method

.method protected static native AppNativeCallsNotifySkuInventoryLoaded(Lcom/pixelberrystudios/iab/Inventory;)V
.end method

.method public static native GetHelpshiftApiKey()Ljava/lang/String;
.end method

.method public static native GetHelpshiftAppId()Ljava/lang/String;
.end method

.method public static native GetHelpshiftDomainName()Ljava/lang/String;
.end method

.method public static native GetLeanPlumAppId()Ljava/lang/String;
.end method

.method public static native GetLeanPlumDevKey()Ljava/lang/String;
.end method

.method public static native GetLeanPlumProdKey()Ljava/lang/String;
.end method

.method public static native GetNativeXAppId()Ljava/lang/String;
.end method

.method public static native GetSponsorPayDebugAppId()Ljava/lang/String;
.end method

.method public static native GetSponsorPayDebugSecurityToken()Ljava/lang/String;
.end method

.method public static native GetSponsorPayReleaseAppId()Ljava/lang/String;
.end method

.method public static native GetSponsorPayReleaseSecurityToken()Ljava/lang/String;
.end method

.method protected static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public static containsRequestId(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 105
    invoke-static {p0}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->AppNativeCallsContainsRequestId(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static createPayload(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string/jumbo v0, "createPayload"

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->a(Ljava/lang/String;)V

    .line 94
    invoke-static {p0}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->AppNativeCallsCreatePayload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static finishActivity()V
    .locals 2

    .prologue
    .line 174
    const-string/jumbo v0, "finishActivity"

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->a(Ljava/lang/String;)V

    .line 177
    sget-object v0, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->b:Lcom/pixelberrystudios/hssandroid/PBNativeActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->moveTaskToBack(Z)Z

    .line 178
    return-void
.end method

.method public static getConsumableSkus()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->AppNativeCallsGetConsumableSkus()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static insertRequestId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    invoke-static {p0}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->AppNativeCallsInsertRequestId(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public static notifyBoughtInventoryLoaded(Lcom/pixelberrystudios/iab/Inventory;)V
    .locals 2

    .prologue
    .line 122
    const-string/jumbo v0, "scheduleNotifyBoughtInventoryLoaded"

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->a(Ljava/lang/String;)V

    .line 123
    sget-object v0, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->a:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    new-instance v1, Lcom/pixelberrystudios/hssandroid/b;

    invoke-direct {v1, p0}, Lcom/pixelberrystudios/hssandroid/b;-><init>(Lcom/pixelberrystudios/iab/Inventory;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->addPixelberryTask(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method

.method public static notifyLowMemory()V
    .locals 2

    .prologue
    .line 112
    const-string/jumbo v0, "scheduleNotifyLowMemory"

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->a(Ljava/lang/String;)V

    .line 113
    sget-object v0, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->a:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    new-instance v1, Lcom/pixelberrystudios/hssandroid/a;

    invoke-direct {v1}, Lcom/pixelberrystudios/hssandroid/a;-><init>()V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->addPixelberryTask(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method

.method public static notifyPurchaseCompleted(Lcom/pixelberrystudios/iab/Purchase;ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 143
    const-string/jumbo v0, "scheduleNotifyPurchaseCompleted"

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->a(Ljava/lang/String;)V

    .line 144
    sget-object v0, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->a:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    new-instance v1, Lcom/pixelberrystudios/hssandroid/d;

    invoke-direct {v1, p0, p1, p2}, Lcom/pixelberrystudios/hssandroid/d;-><init>(Lcom/pixelberrystudios/iab/Purchase;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->addPixelberryTask(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method

.method public static notifySkuInventoryLoaded(Lcom/pixelberrystudios/iab/Inventory;)V
    .locals 2

    .prologue
    .line 132
    const-string/jumbo v0, "scheduleNotifySkuInventoryLoaded"

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->a(Ljava/lang/String;)V

    .line 133
    sget-object v0, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->a:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    new-instance v1, Lcom/pixelberrystudios/hssandroid/c;

    invoke-direct {v1, p0}, Lcom/pixelberrystudios/hssandroid/c;-><init>(Lcom/pixelberrystudios/iab/Inventory;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->addPixelberryTask(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method

.method public static setActivity(Lcom/pixelberrystudios/hssandroid/PBNativeActivity;)V
    .locals 0

    .prologue
    .line 27
    sput-object p0, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->b:Lcom/pixelberrystudios/hssandroid/PBNativeActivity;

    .line 28
    return-void
.end method

.method public static setView(Lorg/cocos2dx/lib/Cocos2dxRenderer;)V
    .locals 0

    .prologue
    .line 21
    sput-object p0, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->a:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    .line 22
    return-void
.end method

.method public static setupHideProgressDialog()V
    .locals 1

    .prologue
    .line 164
    const-string/jumbo v0, "setupHideProgressDialog"

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->a(Ljava/lang/String;)V

    .line 165
    sget-object v0, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->b:Lcom/pixelberrystudios/hssandroid/PBNativeActivity;

    invoke-virtual {v0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->m()V

    .line 166
    return-void
.end method

.method public static setupProgressDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 159
    const-string/jumbo v0, "setupProgressDialog"

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->a(Ljava/lang/String;)V

    .line 160
    sget-object v0, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->b:Lcom/pixelberrystudios/hssandroid/PBNativeActivity;

    invoke-virtual {v0, p0, p1}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public static waitOnTextureReload()V
    .locals 1

    .prologue
    .line 154
    const-string/jumbo v0, "waitOnTextureReload"

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->a(Ljava/lang/String;)V

    .line 155
    sget-object v0, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->b:Lcom/pixelberrystudios/hssandroid/PBNativeActivity;

    invoke-virtual {v0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->l()V

    .line 156
    return-void
.end method
