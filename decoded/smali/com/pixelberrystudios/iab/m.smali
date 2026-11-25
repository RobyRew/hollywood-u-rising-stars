.class final Lcom/pixelberrystudios/iab/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/pixelberrystudios/iab/m;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->i:Lcom/pixelberrystudios/iab/BaseIabActivity;

    iget-object v1, p0, Lcom/pixelberrystudios/iab/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pixelberrystudios/iab/BaseIabActivity;->g(Ljava/lang/String;)V

    .line 124
    return-void
.end method
