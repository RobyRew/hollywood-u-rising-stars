.class final Lcom/pixelberrystudios/hssandroid/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/iab/Purchase;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/iab/Purchase;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/pixelberrystudios/hssandroid/d;->a:Lcom/pixelberrystudios/iab/Purchase;

    iput-boolean p2, p0, Lcom/pixelberrystudios/hssandroid/d;->b:Z

    iput-object p3, p0, Lcom/pixelberrystudios/hssandroid/d;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 146
    const-string/jumbo v0, "notifyPurchaseCompleted"

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->a(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/pixelberrystudios/hssandroid/d;->a:Lcom/pixelberrystudios/iab/Purchase;

    iget-boolean v1, p0, Lcom/pixelberrystudios/hssandroid/d;->b:Z

    iget-object v2, p0, Lcom/pixelberrystudios/hssandroid/d;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->AppNativeCallsNotifyPurchaseCompleted(Lcom/pixelberrystudios/iab/Purchase;ZLjava/lang/String;)V

    .line 148
    return-void
.end method
