.class Lcom/pixelberrystudios/hssandroid/l;
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
    .line 355
    iput-object p1, p0, Lcom/pixelberrystudios/hssandroid/l;->a:Lcom/pixelberrystudios/hssandroid/PBNativeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 358
    invoke-static {}, Lcom/pixelberrystudios/hssandroid/NotificationsHelper;->onResume()V

    .line 359
    return-void
.end method
