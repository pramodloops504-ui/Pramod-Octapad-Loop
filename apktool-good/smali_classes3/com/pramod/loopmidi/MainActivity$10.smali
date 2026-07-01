.class Lcom/pramod/loopmidi/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pramod/loopmidi/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pramod/loopmidi/MainActivity;


# direct methods
.method constructor <init>(Lcom/pramod/loopmidi/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/pramod/loopmidi/MainActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 497
    iput-object p1, p0, Lcom/pramod/loopmidi/MainActivity$10;->this$0:Lcom/pramod/loopmidi/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 500
    iget-object v0, p0, Lcom/pramod/loopmidi/MainActivity$10;->this$0:Lcom/pramod/loopmidi/MainActivity;

    invoke-virtual {v0}, Lcom/pramod/loopmidi/MainActivity;->showSaveKitNameDialog()V

    .line 501
    return-void
.end method
