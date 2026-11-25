.class final Lcom/pixelberrystudios/darthkitty/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 368
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 369
    const-string/jumbo v1, "Error"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 370
    const-string/jumbo v1, "There was an error signing in."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 371
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 373
    const-string/jumbo v1, "OK"

    new-instance v2, Lcom/pixelberrystudios/darthkitty/ab;

    invoke-direct {v2, p0}, Lcom/pixelberrystudios/darthkitty/ab;-><init>(Lcom/pixelberrystudios/darthkitty/aa;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 381
    new-instance v1, Lcom/pixelberrystudios/darthkitty/ac;

    invoke-direct {v1, p0}, Lcom/pixelberrystudios/darthkitty/ac;-><init>(Lcom/pixelberrystudios/darthkitty/aa;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 388
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 389
    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-static {v0, v1}, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->showDialogAndMaintainImmersiveMode(Landroid/app/Dialog;Landroid/app/Activity;)V

    .line 390
    return-void
.end method
