.class Lcom/pixelberrystudios/darthkitty/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/darthkitty/ah;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/darthkitty/ah;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/ai;->a:Lcom/pixelberrystudios/darthkitty/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 523
    const-string/jumbo v0, "showOauthErrorDialog OK button"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 524
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->showSignInBenefitsDialog()V

    .line 525
    return-void
.end method
