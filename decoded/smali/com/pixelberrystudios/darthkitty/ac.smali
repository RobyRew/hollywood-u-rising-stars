.class Lcom/pixelberrystudios/darthkitty/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/darthkitty/aa;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/darthkitty/aa;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/ac;->a:Lcom/pixelberrystudios/darthkitty/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 384
    const-string/jumbo v0, "showSignInErrorDialog onCancel"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 385
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->showSignInBenefitsDialog()V

    .line 386
    return-void
.end method
