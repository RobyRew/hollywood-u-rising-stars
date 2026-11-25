.class Lcom/pixelberrystudios/hssandroid/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/pixelberrystudios/hssandroid/PBNativeActivity;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/hssandroid/PBNativeActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/pixelberrystudios/hssandroid/h;->c:Lcom/pixelberrystudios/hssandroid/PBNativeActivity;

    iput-object p2, p0, Lcom/pixelberrystudios/hssandroid/h;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/pixelberrystudios/hssandroid/h;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 264
    iget-object v0, p0, Lcom/pixelberrystudios/hssandroid/h;->c:Lcom/pixelberrystudios/hssandroid/PBNativeActivity;

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->a(Lcom/pixelberrystudios/hssandroid/PBNativeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 265
    iget-object v6, p0, Lcom/pixelberrystudios/hssandroid/h;->c:Lcom/pixelberrystudios/hssandroid/PBNativeActivity;

    iget-object v0, p0, Lcom/pixelberrystudios/hssandroid/h;->c:Lcom/pixelberrystudios/hssandroid/PBNativeActivity;

    iget-object v1, p0, Lcom/pixelberrystudios/hssandroid/h;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/pixelberrystudios/hssandroid/h;->b:Ljava/lang/String;

    new-instance v5, Lcom/pixelberrystudios/hssandroid/i;

    invoke-direct {v5, p0}, Lcom/pixelberrystudios/hssandroid/i;-><init>(Lcom/pixelberrystudios/hssandroid/h;)V

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->a(Lcom/pixelberrystudios/hssandroid/PBNativeActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 274
    iget-object v0, p0, Lcom/pixelberrystudios/hssandroid/h;->c:Lcom/pixelberrystudios/hssandroid/PBNativeActivity;

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->a(Lcom/pixelberrystudios/hssandroid/PBNativeActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 276
    :cond_0
    return-void
.end method
