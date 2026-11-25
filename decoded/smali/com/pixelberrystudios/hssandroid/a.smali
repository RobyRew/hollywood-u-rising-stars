.class final Lcom/pixelberrystudios/hssandroid/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 115
    const-string/jumbo v0, "notifyLowMemory"

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->a(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->AppNativeCallsNotifyLowMemory()V

    .line 117
    return-void
.end method
