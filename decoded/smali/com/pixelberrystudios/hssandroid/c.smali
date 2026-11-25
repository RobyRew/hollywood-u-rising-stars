.class final Lcom/pixelberrystudios/hssandroid/c;
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
    .line 133
    iput-object p1, p0, Lcom/pixelberrystudios/hssandroid/c;->a:Lcom/pixelberrystudios/iab/Inventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 135
    const-string/jumbo v0, "notifySkuInventoryLoaded"

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->a(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/pixelberrystudios/hssandroid/c;->a:Lcom/pixelberrystudios/iab/Inventory;

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->AppNativeCallsNotifySkuInventoryLoaded(Lcom/pixelberrystudios/iab/Inventory;)V

    .line 137
    return-void
.end method
