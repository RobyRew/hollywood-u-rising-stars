.class Lcom/pixelberrystudios/darthkitty/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/darthkitty/aa;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/darthkitty/aa;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/ab;->a:Lcom/pixelberrystudios/darthkitty/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 377
    const-string/jumbo v0, "showSignInErrorDialog OK button"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 378
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->showSignInBenefitsDialog()V

    .line 379
    return-void
.end method
