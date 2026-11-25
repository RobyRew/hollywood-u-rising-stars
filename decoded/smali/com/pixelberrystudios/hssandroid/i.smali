.class Lcom/pixelberrystudios/hssandroid/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/hssandroid/h;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/hssandroid/h;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/pixelberrystudios/hssandroid/i;->a:Lcom/pixelberrystudios/hssandroid/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 269
    const-string/jumbo v0, "onCancel"

    invoke-static {v0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->d(Ljava/lang/String;)V

    .line 270
    invoke-static {}, Lcom/pixelberrystudios/hssandroid/AppNativeCalls;->finishActivity()V

    .line 271
    iget-object v0, p0, Lcom/pixelberrystudios/hssandroid/i;->a:Lcom/pixelberrystudios/hssandroid/h;

    iget-object v0, v0, Lcom/pixelberrystudios/hssandroid/h;->c:Lcom/pixelberrystudios/hssandroid/PBNativeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->a(Lcom/pixelberrystudios/hssandroid/PBNativeActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 272
    return-void
.end method
