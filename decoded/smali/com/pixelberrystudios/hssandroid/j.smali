.class Lcom/pixelberrystudios/hssandroid/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/hssandroid/PBNativeActivity;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/hssandroid/PBNativeActivity;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/pixelberrystudios/hssandroid/j;->a:Lcom/pixelberrystudios/hssandroid/PBNativeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/pixelberrystudios/hssandroid/j;->a:Lcom/pixelberrystudios/hssandroid/PBNativeActivity;

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->a(Lcom/pixelberrystudios/hssandroid/PBNativeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/pixelberrystudios/hssandroid/j;->a:Lcom/pixelberrystudios/hssandroid/PBNativeActivity;

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->a(Lcom/pixelberrystudios/hssandroid/PBNativeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 286
    iget-object v0, p0, Lcom/pixelberrystudios/hssandroid/j;->a:Lcom/pixelberrystudios/hssandroid/PBNativeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->a(Lcom/pixelberrystudios/hssandroid/PBNativeActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 288
    :cond_0
    return-void
.end method
