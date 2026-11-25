.class Lcom/pixelberrystudios/hssandroid/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pixelberrystudios/darthkitty/DKGooglePlay$LinkedGameStateProvider;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/hssandroid/PBNativeActivity;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/hssandroid/PBNativeActivity;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/pixelberrystudios/hssandroid/m;->a:Lcom/pixelberrystudios/hssandroid/PBNativeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastPlayedGoogleLinkedAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    invoke-static {}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->AppNativeCallsGetLastPlayedGoogleLinkedAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasGuestSavedGame()Z
    .locals 1

    .prologue
    .line 387
    invoke-static {}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->AppNativeCallsHasGuestSavedGame()Z

    move-result v0

    return v0
.end method
