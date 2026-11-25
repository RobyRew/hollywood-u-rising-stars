.class final Lcom/pixelberrystudios/darthkitty/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 404
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 405
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    .line 406
    invoke-virtual {v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0800c9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 408
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0800c5

    .line 409
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 410
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0800c6

    .line 411
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 412
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0800c7

    .line 413
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 417
    sget-object v4, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->g:Lcom/pixelberrystudios/darthkitty/DKGooglePlay$LinkedGameStateProvider;

    invoke-interface {v4}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay$LinkedGameStateProvider;->getLastPlayedGoogleLinkedAccount()Ljava/lang/String;

    move-result-object v4

    .line 421
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 423
    sget-object v0, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-virtual {v0}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0800c8

    .line 424
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 427
    :cond_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 428
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 430
    new-instance v0, Lcom/pixelberrystudios/darthkitty/ae;

    invoke-direct {v0, p0}, Lcom/pixelberrystudios/darthkitty/ae;-><init>(Lcom/pixelberrystudios/darthkitty/ad;)V

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 443
    new-instance v0, Lcom/pixelberrystudios/darthkitty/af;

    invoke-direct {v0, p0}, Lcom/pixelberrystudios/darthkitty/af;-><init>(Lcom/pixelberrystudios/darthkitty/ad;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 456
    new-instance v0, Lcom/pixelberrystudios/darthkitty/ag;

    invoke-direct {v0, p0}, Lcom/pixelberrystudios/darthkitty/ag;-><init>(Lcom/pixelberrystudios/darthkitty/ad;)V

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 465
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 468
    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->addGPlusIconToDialog(Landroid/app/AlertDialog;)V

    .line 497
    sget-object v1, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a:Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;

    invoke-static {v0, v1}, Lcom/pixelberrystudios/darthkitty/DKDialogHelper;->showDialogAndMaintainImmersiveMode(Landroid/app/Dialog;Landroid/app/Activity;)V

    .line 498
    return-void
.end method
