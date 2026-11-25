.class Lcom/pixelberrystudios/darthkitty/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/darthkitty/ah;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/darthkitty/ah;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/aj;->a:Lcom/pixelberrystudios/darthkitty/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 531
    const-string/jumbo v0, "showSignInBenefitsDialog onCancel"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 532
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->showSignInBenefitsDialog()V

    .line 533
    return-void
.end method
