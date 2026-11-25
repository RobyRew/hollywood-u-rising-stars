.class Lcom/pixelberrystudios/hssandroid/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/hssandroid/PBNativeActivity;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/hssandroid/PBNativeActivity;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/pixelberrystudios/hssandroid/k;->a:Lcom/pixelberrystudios/hssandroid/PBNativeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/pixelberrystudios/hssandroid/k;->a:Lcom/pixelberrystudios/hssandroid/PBNativeActivity;

    invoke-virtual {v0}, Lcom/pixelberrystudios/hssandroid/PBNativeActivity;->m()V

    .line 304
    return-void
.end method
