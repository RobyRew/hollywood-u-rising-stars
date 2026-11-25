.class Lcom/pixelberrystudios/darthkitty/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/darthkitty/ad;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/darthkitty/ad;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/ag;->a:Lcom/pixelberrystudios/darthkitty/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 460
    const-string/jumbo v0, "Sign in button click"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->a(Ljava/lang/String;)V

    .line 461
    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKGooglePlay;->beginUserInitiatedSignIn()V

    .line 462
    return-void
.end method
