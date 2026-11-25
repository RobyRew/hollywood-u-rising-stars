.class Lcom/pixelberrystudios/darthkitty/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/darthkitty/ad;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/darthkitty/ad;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/af;->a:Lcom/pixelberrystudios/darthkitty/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 446
    const-string/jumbo v0, "showSignInBenefitsDialog onCancel"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 447
    const-string/jumbo v0, "<LOCAL>"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->saveAccountPreference(Ljava/lang/String;)V

    .line 451
    const-string/jumbo v0, "authenticateFailure"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 452
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->authenticateFailure()V

    .line 453
    return-void
.end method
