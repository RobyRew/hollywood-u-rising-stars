.class final Lcom/pixelberrystudios/hssandroid/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/iab/Inventory;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/iab/Inventory;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/pixelberrystudios/hssandroid/b;->a:Lcom/pixelberrystudios/iab/Inventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 125
    const-string/jumbo v0, "notifyBoughtInventoryLoaded"

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->a(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/pixelberrystudios/hssandroid/b;->a:Lcom/pixelberrystudios/iab/Inventory;

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->AppNativeCallsNotifyBoughtInventoryLoaded(Lcom/pixelberrystudios/iab/Inventory;)V

    .line 127
    return-void
.end method
