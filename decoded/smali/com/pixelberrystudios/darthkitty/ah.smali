.class final Lcom/pixelberrystudios/darthkitty/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 511
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 512
    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v1}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 513
    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    .line 514
    invoke-virtual {v1}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 513
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 515
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 517
    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    .line 518
    invoke-virtual {v1}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/pixelberrystudios/darthkitty/ai;

    invoke-direct {v2, p0}, Lcom/pixelberrystudios/darthkitty/ai;-><init>(Lcom/pixelberrystudios/darthkitty/ah;)V

    .line 517
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 528
    new-instance v1, Lcom/pixelberrystudios/darthkitty/aj;

    invoke-direct {v1, p0}, Lcom/pixelberrystudios/darthkitty/aj;-><init>(Lcom/pixelberrystudios/darthkitty/ah;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 536
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 537
    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-static {v0, v1}, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->showDialogAndMaintainImmersiveMode(Landroid/app/Dialog;Landroid/app/Activity;)V

    .line 538
    return-void
.end method
